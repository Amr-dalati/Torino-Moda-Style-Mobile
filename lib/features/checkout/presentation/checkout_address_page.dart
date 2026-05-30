import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router/route_names.dart';
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

class CheckoutAddressPage extends ConsumerStatefulWidget {
  const CheckoutAddressPage({super.key});

  @override
  ConsumerState<CheckoutAddressPage> createState() => _CheckoutAddressPageState();
}

class _CheckoutAddressPageState extends ConsumerState<CheckoutAddressPage> {
  bool _showAddForm = false;
  int? _selectedAddressId;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final preferArabic = Localizations.localeOf(context).languageCode == 'ar';
    final addresses = ref.watch(addressControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.selectAddressTitle),
        actions: [
          TextButton(
            onPressed: () => setState(() => _showAddForm = !_showAddForm),
            child: Text(_showAddForm ? l10n.cancelLabel : l10n.addAddressLabel),
          ),
        ],
      ),
      body: Column(
        children: [
          if (_showAddForm)
            Expanded(child: _AddAddressForm(onCreated: _onAddressCreated))
          else
            Expanded(
              child: AsyncValueView<List<CustomerAddress>>(
                value: addresses,
                loadingLabel: l10n.loadingAddresses,
                data: (list) {
                  if (list.isEmpty) {
                    return EmptyStateView(
                      icon: Icons.location_off_outlined,
                      message: l10n.noAddressesMessage,
                      actionLabel: l10n.addAddressLabel,
                      onAction: () => setState(() => _showAddForm = true),
                    );
                  }
                  _selectedAddressId ??= list
                      .where((a) => a.isDefault)
                      .map((a) => a.id)
                      .firstOrNull ?? list.first.id;

                  return RefreshIndicator(
                    onRefresh: () => ref.read(addressControllerProvider.notifier).refresh(),
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        final address = list[index];
                        final selected = _selectedAddressId == address.id;
                        return Card(
                          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                          child: ListTile(
                            leading: Icon(
                              selected ? Icons.radio_button_checked : Icons.radio_button_off,
                            ),
                            title: Text(address.displayName(preferArabic: preferArabic)),
                            subtitle: Text(
                              [
                                if (address.recipientPhone != null) address.recipientPhone!,
                                if (address.deliveryArea?.deliveryFee != null)
                                  '${l10n.deliveryFeeLabel}: ${address.deliveryArea!.deliveryFee}',
                                if (address.isDefault) l10n.defaultAddressBadge,
                              ].join(' · '),
                            ),
                            trailing: PopupMenuButton<String>(
                              onSelected: (action) => _handleAddressAction(action, address),
                              itemBuilder: (context) => [
                                if (!address.isDefault)
                                  PopupMenuItem(
                                    value: 'default',
                                    child: Text(l10n.setDefaultAddressLabel),
                                  ),
                                PopupMenuItem(
                                  value: 'delete',
                                  child: Text(l10n.deleteAddressLabel),
                                ),
                              ],
                            ),
                            onTap: () => setState(() => _selectedAddressId = address.id),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          if (!_showAddForm)
            Padding(
              padding: const EdgeInsets.all(16),
              child: PrimaryButton(
                label: l10n.continueToReviewLabel,
                onPressed: _selectedAddressId == null
                    ? null
                    : () => context.push(
                          RouteNames.checkoutReview,
                          extra: _selectedAddressId,
                        ),
              ),
            ),
        ],
      ),
    );
  }

  void _onAddressCreated(CustomerAddress address) {
    setState(() {
      _showAddForm = false;
      _selectedAddressId = address.id;
    });
  }

  Future<void> _handleAddressAction(String action, CustomerAddress address) async {
    try {
      switch (action) {
        case 'default':
          await ref.read(addressControllerProvider.notifier).setDefaultAddress(address.id);
        case 'delete':
          await _deleteAddress(address.id);
      }
    } on AppError catch (e) {
      if (mounted) showAppErrorSnackBar(context, e);
    }
  }

  Future<void> _deleteAddress(int id) async {
    try {
      await ref.read(addressControllerProvider.notifier).deleteAddress(id);
      if (_selectedAddressId == id) {
        setState(() => _selectedAddressId = null);
      }
    } on AppError catch (e) {
      if (mounted) showAppErrorSnackBar(context, e);
    }
  }
}

class _AddAddressForm extends ConsumerStatefulWidget {
  const _AddAddressForm({required this.onCreated});

  final ValueChanged<CustomerAddress> onCreated;

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
  String? _regionError;
  String? _areaError;

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
    setState(() {
      _regionError = null;
      _areaError = null;
    });

    if (_selectedRegionId == null) {
      setState(() => _regionError = l10n.regionRequired);
      return;
    }
    if (_selectedAreaId == null) {
      setState(() => _areaError = l10n.areaRequired);
      return;
    }
    if (!(_formKey.currentState?.validate() ?? false)) return;

    setState(() => _submitting = true);
    try {
      final created = await ref.read(addressControllerProvider.notifier).createAddress(
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
      widget.onCreated(created);
    } on AppError catch (e) {
      if (!mounted) return;
      final fieldErrors = e is ValidationError ? e.fieldErrors : null;
      if (fieldErrors != null) {
        setState(() {
          _regionError = fieldErrors['delivery_area_id']?.first;
          _areaError = fieldErrors['delivery_area_id']?.first;
        });
      } else {
        showAppErrorSnackBar(context, e);
      }
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

    DeliveryArea? selectedArea;
    areas.whenData((list) {
      selectedArea = list.where((a) => a.id == _selectedAreaId).firstOrNull;
    });

    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          regions.when(
            loading: () => LoadingView(label: l10n.loadingDelivery),
            error: (e, _) => Text(e.toString()),
            data: (list) => DropdownButtonFormField<int>(
              initialValue: _selectedRegionId,
              decoration: InputDecoration(
                labelText: l10n.regionLabel,
                errorText: _regionError,
              ),
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
              initialValue: _selectedAreaId,
              decoration: InputDecoration(
                labelText: l10n.areaLabel,
                errorText: _areaError,
              ),
              items: list
                  .map(
                    (a) => DropdownMenuItem(
                      value: a.id,
                      child: Text(
                        '${a.displayName(preferArabic: preferArabic)} (${l10n.deliveryFeeLabel}: ${a.deliveryFee})',
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) => setState(() => _selectedAreaId = value),
            ),
          ),
          if (selectedArea != null) ...[
            const SizedBox(height: 8),
            Text('${l10n.deliveryFeeLabel}: ${selectedArea!.deliveryFee}'),
          ],
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
          TextFormField(
            controller: _labelController,
            decoration: InputDecoration(labelText: l10n.addressLabelOptional),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(labelText: l10n.recipientNameLabel),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _phoneController,
            decoration: InputDecoration(labelText: l10n.recipientPhoneLabel),
            keyboardType: TextInputType.phone,
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
