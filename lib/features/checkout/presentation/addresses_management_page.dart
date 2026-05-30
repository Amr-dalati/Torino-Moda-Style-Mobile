import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/localization/l10n.dart';
import '../../../core/network/error/app_error.dart';
import '../../../shared/utils/app_error_ui.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/empty_state_view.dart';
import '../../../shared/widgets/loading_view.dart';
import '../../../shared/widgets/primary_button.dart';
import '../application/address_controller.dart';
import '../application/delivery_controller.dart';
import '../domain/customer_address.dart';
import '../domain/delivery_area.dart';
import '../domain/store_customer_address_request.dart';
import '../domain/update_customer_address_request.dart';

/// Manage saved addresses from profile (add, edit, delete, set default).
class AddressesManagementPage extends ConsumerStatefulWidget {
  const AddressesManagementPage({super.key});

  @override
  ConsumerState<AddressesManagementPage> createState() =>
      _AddressesManagementPageState();
}

class _AddressesManagementPageState extends ConsumerState<AddressesManagementPage> {
  bool _showAddForm = false;
  CustomerAddress? _editingAddress;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final preferArabic = Localizations.localeOf(context).languageCode == 'ar';
    final addresses = ref.watch(addressControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.manageAddressesLabel),
        actions: [
          if (_editingAddress == null)
            TextButton(
              onPressed: () => setState(() => _showAddForm = !_showAddForm),
              child: Text(_showAddForm ? l10n.cancelLabel : l10n.addAddressLabel),
            ),
        ],
      ),
      body: _showAddForm
          ? _AddAddressForm(onCreated: () => setState(() => _showAddForm = false))
          : _editingAddress != null
              ? _EditAddressForm(
                  address: _editingAddress!,
                  onSaved: () => setState(() => _editingAddress = null),
                  onCancel: () => setState(() => _editingAddress = null),
                )
              : AsyncValueView<List<CustomerAddress>>(
                  value: addresses,
                  loadingLabel: l10n.loadingAddresses,
                  data: (list) {
                    if (list.isEmpty) {
                      return RefreshIndicator(
                        onRefresh: () =>
                            ref.read(addressControllerProvider.notifier).refresh(),
                        child: ListView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          children: [
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              child: EmptyStateView(
                                icon: Icons.location_off_outlined,
                                message: l10n.noAddressesManageMessage,
                                actionLabel: l10n.addAddressLabel,
                                onAction: () => setState(() => _showAddForm = true),
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    return RefreshIndicator(
                      onRefresh: () =>
                          ref.read(addressControllerProvider.notifier).refresh(),
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          final address = list[index];
                          return Card(
                            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                            child: ListTile(
                              title: Text(address.displayName(preferArabic: preferArabic)),
                              subtitle: Text(
                                [
                                  address.addressLine1,
                                  if (address.recipientPhone != null) address.recipientPhone!,
                                  if (address.isDefault) l10n.defaultAddressBadge,
                                ].join(' · '),
                              ),
                              isThreeLine: true,
                              trailing: PopupMenuButton<String>(
                                onSelected: (action) => _handleAction(action, address),
                                itemBuilder: (context) => [
                                  if (!address.isDefault)
                                    PopupMenuItem(
                                      value: 'default',
                                      child: Text(l10n.setDefaultAddressLabel),
                                    ),
                                  PopupMenuItem(
                                    value: 'edit',
                                    child: Text(l10n.editAddressLabel),
                                  ),
                                  PopupMenuItem(
                                    value: 'delete',
                                    child: Text(l10n.deleteAddressLabel),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
    );
  }

  Future<void> _handleAction(String action, CustomerAddress address) async {
    try {
      switch (action) {
        case 'default':
          await ref.read(addressControllerProvider.notifier).setDefaultAddress(address.id);
        case 'edit':
          setState(() => _editingAddress = address);
        case 'delete':
          await ref.read(addressControllerProvider.notifier).deleteAddress(address.id);
      }
    } on AppError catch (e) {
      if (mounted) showAppErrorSnackBar(context, e);
    }
  }
}

class _AddAddressForm extends ConsumerStatefulWidget {
  const _AddAddressForm({required this.onCreated});

  final VoidCallback onCreated;

  @override
  ConsumerState<_AddAddressForm> createState() => _AddAddressFormState();
}

class _AddAddressFormState extends ConsumerState<_AddAddressForm> {
  final _formKey = GlobalKey<FormState>();
  final _line1Controller = TextEditingController();
  final _line2Controller = TextEditingController();
  final _cityController = TextEditingController();
  final _labelController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  int? _selectedRegionId;
  int? _selectedAreaId;
  bool _setAsDefault = true;
  bool _submitting = false;

  @override
  void dispose() {
    _line1Controller.dispose();
    _line2Controller.dispose();
    _cityController.dispose();
    _labelController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final l10n = context.l10n;
    if (_selectedRegionId == null || _selectedAreaId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${l10n.regionRequired}. ${l10n.areaRequired}')),
      );
      return;
    }
    if (!(_formKey.currentState?.validate() ?? false)) return;

    setState(() => _submitting = true);
    try {
      await ref.read(addressControllerProvider.notifier).createAddress(
            StoreCustomerAddressRequest(
              deliveryAreaId: _selectedAreaId!,
              addressLine1: _line1Controller.text.trim(),
              addressLine2: _line2Controller.text.trim().isEmpty
                  ? null
                  : _line2Controller.text.trim(),
              city: _cityController.text.trim().isEmpty ? null : _cityController.text.trim(),
              label: _labelController.text.trim().isEmpty ? null : _labelController.text.trim(),
              recipientName:
                  _nameController.text.trim().isEmpty ? null : _nameController.text.trim(),
              recipientPhone:
                  _phoneController.text.trim().isEmpty ? null : _phoneController.text.trim(),
              isDefault: _setAsDefault,
            ),
          );
      widget.onCreated();
    } on AppError catch (e) {
      if (mounted) showAppErrorSnackBar(context, e);
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final preferArabic = Localizations.localeOf(context).languageCode == 'ar';
    final regions = ref.watch(deliveryRegionsProvider);
    final areas = _selectedRegionId == null
        ? const AsyncData<List<DeliveryArea>>([])
        : ref.watch(deliveryAreasProvider(_selectedRegionId!));

    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          regions.when(
            loading: () => LoadingView(label: l10n.loadingDelivery),
            error: (e, _) => Text(e.toString()),
            data: (list) => DropdownButtonFormField<int>(
              decoration: InputDecoration(labelText: l10n.regionLabel),
              items: list
                  .map(
                    (r) => DropdownMenuItem(
                      value: r.id,
                      child: Text(r.displayName(preferArabic: preferArabic)),
                    ),
                  )
                  .toList(),
              onChanged: (value) => setState(() {
                _selectedRegionId = value;
                _selectedAreaId = null;
              }),
            ),
          ),
          const SizedBox(height: 12),
          areas.when(
            loading: () => LoadingView(label: l10n.loadingDelivery),
            error: (e, _) => Text(e.toString()),
            data: (list) => DropdownButtonFormField<int>(
              decoration: InputDecoration(labelText: l10n.areaLabel),
              items: list
                  .map(
                    (a) => DropdownMenuItem(
                      value: a.id,
                      child: Text(a.displayName(preferArabic: preferArabic)),
                    ),
                  )
                  .toList(),
              onChanged: (value) => setState(() => _selectedAreaId = value),
            ),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _line1Controller,
            decoration: InputDecoration(labelText: l10n.addressLine1Label),
            validator: (v) => v == null || v.trim().isEmpty ? l10n.addressRequired : null,
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _line2Controller,
            decoration: InputDecoration(labelText: l10n.addressLine2Label),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _cityController,
            decoration: InputDecoration(labelText: l10n.cityLabel),
          ),
          const SizedBox(height: 12),
          SwitchListTile(
            value: _setAsDefault,
            onChanged: (v) => setState(() => _setAsDefault = v),
            title: Text(l10n.setDefaultAddressLabel),
          ),
          const SizedBox(height: 16),
          PrimaryButton(
            label: l10n.saveAddressLabel,
            onPressed: _submitting ? null : _submit,
          ),
        ],
      ),
    );
  }
}

class _EditAddressForm extends ConsumerStatefulWidget {
  const _EditAddressForm({
    required this.address,
    required this.onSaved,
    required this.onCancel,
  });

  final CustomerAddress address;
  final VoidCallback onSaved;
  final VoidCallback onCancel;

  @override
  ConsumerState<_EditAddressForm> createState() => _EditAddressFormState();
}

class _EditAddressFormState extends ConsumerState<_EditAddressForm> {
  late final TextEditingController _line1Controller;
  late final TextEditingController _line2Controller;
  late final TextEditingController _cityController;
  late final TextEditingController _labelController;
  late final TextEditingController _nameController;
  late final TextEditingController _phoneController;
  bool _submitting = false;

  @override
  void initState() {
    super.initState();
    final address = widget.address;
    _line1Controller = TextEditingController(text: address.addressLine1);
    _line2Controller = TextEditingController(text: address.addressLine2 ?? '');
    _cityController = TextEditingController(text: address.city ?? '');
    _labelController = TextEditingController(text: address.label ?? '');
    _nameController = TextEditingController(text: address.recipientName ?? '');
    _phoneController = TextEditingController(text: address.recipientPhone ?? '');
  }

  @override
  void dispose() {
    _line1Controller.dispose();
    _line2Controller.dispose();
    _cityController.dispose();
    _labelController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() => _submitting = true);
    try {
      await ref.read(addressControllerProvider.notifier).updateAddress(
            widget.address.id,
            UpdateCustomerAddressRequest(
              addressLine1: _line1Controller.text.trim(),
              addressLine2: _line2Controller.text.trim().isEmpty
                  ? null
                  : _line2Controller.text.trim(),
              city: _cityController.text.trim().isEmpty ? null : _cityController.text.trim(),
              label: _labelController.text.trim().isEmpty ? null : _labelController.text.trim(),
              recipientName:
                  _nameController.text.trim().isEmpty ? null : _nameController.text.trim(),
              recipientPhone:
                  _phoneController.text.trim().isEmpty ? null : _phoneController.text.trim(),
            ),
          );
      widget.onSaved();
    } on AppError catch (e) {
      if (mounted) showAppErrorSnackBar(context, e);
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(l10n.editAddressLabel, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 16),
        TextField(
          controller: _line1Controller,
          decoration: InputDecoration(labelText: l10n.addressLine1Label),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _line2Controller,
          decoration: InputDecoration(labelText: l10n.addressLine2Label),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _cityController,
          decoration: InputDecoration(labelText: l10n.cityLabel),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _labelController,
          decoration: InputDecoration(labelText: l10n.addressLabelOptional),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _nameController,
          decoration: InputDecoration(labelText: l10n.recipientNameLabel),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _phoneController,
          decoration: InputDecoration(labelText: l10n.recipientPhoneLabel),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(onPressed: widget.onCancel, child: Text(l10n.cancelLabel)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: PrimaryButton(
                label: l10n.saveAddressLabel,
                onPressed: _submitting ? null : _submit,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
