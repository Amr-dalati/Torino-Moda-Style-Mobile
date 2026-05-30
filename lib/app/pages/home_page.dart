import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/localization/l10n.dart';
import '../../shared/widgets/app_scaffold.dart';
import '../providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key, required this.onLogout});

  final Future<void> Function() onLogout;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final session = ref.watch(authSessionProvider);
    final customer = session.customer;
    final greeting = customer == null
        ? l10n.homeTitle
        : l10n.homeWelcome(customer.name);

    return AppScaffold(
      title: l10n.homeTitle,
      actions: [
        IconButton(
          onPressed: () => onLogout(),
          icon: const Icon(Icons.logout),
          tooltip: l10n.logoutLabel,
        ),
      ],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            greeting,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
