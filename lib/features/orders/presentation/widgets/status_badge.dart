import 'package:flutter/material.dart';

enum StatusBadgeKind { order, payment }

class StatusBadge extends StatelessWidget {
  const StatusBadge({
    super.key,
    required this.status,
    required this.label,
    required this.kind,
  });

  final String status;
  final String label;
  final StatusBadgeKind kind;

  @override
  Widget build(BuildContext context) {
    final colors = _colorsForStatus(context, status, kind);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: colors.foreground,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }

  _BadgeColors _colorsForStatus(
    BuildContext context,
    String status,
    StatusBadgeKind kind,
  ) {
    final scheme = Theme.of(context).colorScheme;
    if (kind == StatusBadgeKind.payment) {
      return switch (status) {
        'paid' => _BadgeColors(
            background: scheme.primaryContainer,
            foreground: scheme.onPrimaryContainer,
          ),
        'pending' => _BadgeColors(
            background: scheme.tertiaryContainer,
            foreground: scheme.onTertiaryContainer,
          ),
        'failed' || 'expired' => _BadgeColors(
            background: scheme.errorContainer,
            foreground: scheme.onErrorContainer,
          ),
        _ => _BadgeColors(
            background: scheme.surfaceContainerHighest,
            foreground: scheme.onSurfaceVariant,
          ),
      };
    }

    return switch (status) {
      'paid' || 'delivered' => _BadgeColors(
          background: scheme.primaryContainer,
          foreground: scheme.onPrimaryContainer,
        ),
      'awaiting_payment' => _BadgeColors(
          background: scheme.tertiaryContainer,
          foreground: scheme.onTertiaryContainer,
        ),
      'cancelled' => _BadgeColors(
          background: scheme.errorContainer,
          foreground: scheme.onErrorContainer,
        ),
      _ => _BadgeColors(
          background: scheme.surfaceContainerHighest,
          foreground: scheme.onSurfaceVariant,
        ),
    };
  }
}

class _BadgeColors {
  const _BadgeColors({required this.background, required this.foreground});

  final Color background;
  final Color foreground;
}
