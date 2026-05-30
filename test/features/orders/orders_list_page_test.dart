import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/localization/l10n.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_meta.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_result.dart';
import 'package:torino_moda_style_f/features/orders/application/orders_list_controller.dart';
import 'package:torino_moda_style_f/features/orders/application/orders_list_state.dart';
import 'package:torino_moda_style_f/features/orders/application/orders_providers.dart';
import 'package:torino_moda_style_f/features/orders/data/repositories/orders_repository.dart';
import 'package:torino_moda_style_f/features/orders/data/sources/orders_remote.dart';
import 'package:torino_moda_style_f/features/orders/domain/order.dart';
import 'package:torino_moda_style_f/features/orders/domain/payment_status_response.dart';
import 'package:torino_moda_style_f/features/orders/presentation/orders_list_page.dart';
import 'package:torino_moda_style_f/l10n/app_localizations.dart';

class _FakeOrdersRemote implements OrdersRemote {
  @override
  Future<PaginatedResult<Order>> listOrders({int page = 1, int perPage = 20}) async {
    return PaginatedResult(
      items: [
        Order.fromJson({
          'id': 1,
          'order_number': 'TMS-2026-000001',
          'order_status': 'awaiting_payment',
          'payment_status': 'pending',
          'subtotal': '100.00',
          'delivery_fee': '50.00',
          'discount_total': '0.00',
          'total': '150.00',
          'currency': 'EGP',
        }),
      ],
      meta: const PaginatedMeta(currentPage: 1, perPage: 20, total: 1, lastPage: 1),
    );
  }

  @override
  Future<Order> getOrder(int id) => throw UnimplementedError();

  @override
  Future<PaymentStatusResponse> getPaymentStatus(int id) => throw UnimplementedError();
}

class _TestOrdersListController extends OrdersListController {
  @override
  Future<OrdersListState> build() async {
    final result = await ref.read(ordersRepositoryProvider).listOrders();
    return OrdersListState(
      orders: result.items,
      currentPage: result.meta.currentPage,
      lastPage: result.meta.lastPage,
    );
  }
}

void main() {
  testWidgets('OrdersListPage shows order number', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          ordersRepositoryProvider.overrideWithValue(
            OrdersRepository(remote: _FakeOrdersRemote()),
          ),
          ordersListControllerProvider.overrideWith(_TestOrdersListController.new),
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppL10n.supportedLocales,
          home: const OrdersListPage(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('My orders'), findsOneWidget);
    expect(find.text('TMS-2026-000001'), findsOneWidget);
  });
}
