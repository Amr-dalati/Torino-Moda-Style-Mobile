import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router/route_names.dart';
import '../../../core/localization/l10n.dart';
import '../../../core/localization/status_labels.dart';
import '../../../core/network/error/app_error.dart';
import '../../../shared/utils/app_error_ui.dart';
import '../../../shared/widgets/empty_state_view.dart';
import '../../../shared/widgets/loading_view.dart';
import '../application/orders_list_controller.dart';
import '../domain/order.dart';
import 'widgets/order_date_formatter.dart';
import 'widgets/status_badge.dart';

class OrdersListPage extends ConsumerWidget {
  const OrdersListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final listState = ref.watch(ordersListControllerProvider);

    ref.listen(ordersListControllerProvider, (previous, next) {
      next.whenOrNull(
        error: (error, _) {
          if (error is AppError) {
            showAppErrorSnackBar(context, error);
          }
        },
      );
    });

    return Scaffold(
      appBar: AppBar(title: Text(l10n.ordersTitle)),
      body: listState.when(
        loading: () => LoadingView(label: l10n.loadingOrders),
        error: (e, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(e is AppError ? appErrorMessage(e) : e.toString()),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () => ref.read(ordersListControllerProvider.notifier).refresh(),
                child: Text(l10n.retryLabel),
              ),
            ],
          ),
        ),
        data: (state) {
          if (state.isEmpty) {
            return RefreshIndicator(
              onRefresh: () => ref.read(ordersListControllerProvider.notifier).refresh(),
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              child: EmptyStateView(
                                icon: Icons.receipt_long_outlined,
                                message: l10n.noOrdersMessage,
                                actionLabel: l10n.browseProductsLabel,
                                onAction: () => context.go(RouteNames.products),
                              ),
                            ),
                ],
              ),
            );
          }

          return NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification is ScrollEndNotification &&
                  notification.metrics.extentAfter < 200 &&
                  state.hasMore &&
                  !state.isLoadingMore) {
                ref.read(ordersListControllerProvider.notifier).loadMore();
              }
              return false;
            },
            child: RefreshIndicator(
              onRefresh: () => ref.read(ordersListControllerProvider.notifier).refresh(),
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: state.orders.length + (state.isLoadingMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index >= state.orders.length) {
                    return const Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  final order = state.orders[index];
                  return _OrderListTile(
                    order: order,
                    onTap: () => context.push(RouteNames.orderDetailPath(order.id)),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class _OrderListTile extends StatelessWidget {
  const _OrderListTile({required this.order, required this.onTap});

  final Order order;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final created = formatOrderDate(order.createdAt);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ListTile(
        onTap: onTap,
        title: Text(order.orderNumber),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (created.isNotEmpty) Text('${l10n.orderDateLabel}: $created'),
            Text('${l10n.totalLabel}: ${order.total} ${order.currency}'),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 4,
              children: [
                StatusBadge(
                  status: order.paymentStatus,
                  label: StatusLabels.paymentStatus(l10n, order.paymentStatus),
                  kind: StatusBadgeKind.payment,
                ),
                StatusBadge(
                  status: order.orderStatus,
                  label: StatusLabels.orderStatus(l10n, order.orderStatus),
                  kind: StatusBadgeKind.order,
                ),
              ],
            ),
          ],
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
