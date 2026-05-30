import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router/route_names.dart';
import '../../../core/localization/l10n.dart';
import '../../../core/network/error/app_error.dart';
import '../../../shared/utils/app_error_ui.dart';
import '../../../shared/widgets/primary_button.dart';
import '../application/barcode_lookup_controller.dart';

class BarcodeLookupPage extends ConsumerStatefulWidget {
  const BarcodeLookupPage({super.key});

  @override
  ConsumerState<BarcodeLookupPage> createState() => _BarcodeLookupPageState();
}

class _BarcodeLookupPageState extends ConsumerState<BarcodeLookupPage> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _submitting = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    setState(() => _submitting = true);
    try {
      final result = await ref.read(barcodeLookupControllerProvider.notifier).lookup(
            _controller.text,
          );
      if (!mounted) return;
      context.push(
        RouteNames.productDetailPath(result.product.id),
        extra: result.variant?.id,
      );
    } on AppError catch (e) {
      if (mounted) showAppErrorSnackBar(context, e);
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.barcodeLookupTitle)),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(l10n.barcodeLookupHint, style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 16),
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: l10n.barcodeLabel,
                  hintText: l10n.barcodeInputHint,
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.search,
                onFieldSubmitted: (_) => _submitting ? null : _submit(),
                validator: (value) {
                  final trimmed = value?.trim() ?? '';
                  if (trimmed.isEmpty) return l10n.barcodeRequired;
                  if (trimmed.length > 100) return l10n.barcodeTooLong;
                  return null;
                },
              ),
              const SizedBox(height: 24),
              PrimaryButton(
                label: l10n.barcodeLookupAction,
                onPressed: _submitting ? null : _submit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
