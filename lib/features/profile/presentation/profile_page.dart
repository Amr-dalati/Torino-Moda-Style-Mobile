import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router/route_names.dart';
import '../../../core/localization/l10n.dart';
import '../../../core/network/error/app_error.dart';
import '../../../shared/utils/app_error_ui.dart';
import '../../../shared/widgets/loading_view.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../auth/domain/customer.dart';
import '../application/profile_controller.dart';
import '../domain/update_profile_request.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key, required this.onLogout});

  final Future<void> Function() onLogout;

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  bool _editing = false;
  bool _saving = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _startEditing(Customer customer) {
    _nameController.text = customer.name;
    _emailController.text = customer.email ?? '';
    _phoneController.text = customer.phone;
    setState(() => _editing = true);
  }

  Future<void> _saveProfile() async {
    setState(() => _saving = true);
    try {
      await ref.read(profileControllerProvider.notifier).updateProfile(
            UpdateProfileRequest(
              name: _nameController.text.trim(),
              email: _emailController.text.trim().isEmpty
                  ? null
                  : _emailController.text.trim(),
              phone: _phoneController.text.trim(),
            ),
          );
      if (mounted) setState(() => _editing = false);
    } on AppError catch (e) {
      if (mounted) showAppErrorSnackBar(context, e);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final profile = ref.watch(profileControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.profileTitle),
        actions: [
          if (profile case AsyncData(:final value))
            if (_editing)
              TextButton(
                onPressed: _saving ? null : () => setState(() => _editing = false),
                child: Text(l10n.cancelLabel),
              )
            else
              IconButton(
                icon: const Icon(Icons.edit_outlined),
                tooltip: l10n.editProfileLabel,
                onPressed: () => _startEditing(value),
              ),
        ],
      ),
      body: profile.when(
        loading: () => LoadingView(label: l10n.loadingProfile),
        error: (e, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(e is AppError ? appErrorMessage(e) : e.toString()),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () => ref.read(profileControllerProvider.notifier).refresh(),
                child: Text(l10n.retryLabel),
              ),
            ],
          ),
        ),
        data: (customer) => RefreshIndicator(
          onRefresh: () => ref.read(profileControllerProvider.notifier).refresh(),
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: _editing
                      ? Column(
                          children: [
                            TextField(
                              controller: _nameController,
                              decoration: InputDecoration(labelText: l10n.nameLabel),
                            ),
                            const SizedBox(height: 12),
                            TextField(
                              controller: _emailController,
                              decoration: InputDecoration(labelText: l10n.emailLabelOptional),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 12),
                            TextField(
                              controller: _phoneController,
                              decoration: InputDecoration(labelText: l10n.phoneLabel),
                              keyboardType: TextInputType.phone,
                            ),
                            const SizedBox(height: 16),
                            PrimaryButton(
                              label: l10n.saveProfileLabel,
                              onPressed: _saving ? null : _saveProfile,
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              customer.name,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 8),
                            Text('${l10n.phoneLabel}: ${customer.phone}'),
                            if (customer.email != null && customer.email!.isNotEmpty)
                              Text('${l10n.emailLabelOptional}: ${customer.email}'),
                          ],
                        ),
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.location_on_outlined),
                title: Text(l10n.manageAddressesLabel),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => context.push(RouteNames.profileAddresses),
              ),
              ListTile(
                leading: const Icon(Icons.receipt_long_outlined),
                title: Text(l10n.ordersTitle),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => context.go(RouteNames.orders),
              ),
              const SizedBox(height: 24),
              OutlinedButton.icon(
                onPressed: widget.onLogout,
                icon: const Icon(Icons.logout),
                label: Text(l10n.logoutLabel),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
