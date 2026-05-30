import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_meta.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_result.dart';
import 'package:torino_moda_style_f/features/orders/application/order_details_controller.dart';
import 'package:torino_moda_style_f/features/orders/application/orders_list_controller.dart';
import 'package:torino_moda_style_f/features/orders/application/orders_providers.dart';
import 'package:torino_moda_style_f/features/orders/application/payment_status_controller.dart';
import 'package:torino_moda_style_f/features/orders/data/repositories/orders_repository.dart';
import 'package:torino_moda_style_f/features/orders/data/sources/orders_remote.dart';
import 'package:torino_moda_style_f/features/orders/domain/order.dart';
import 'package:torino_moda_style_f/features/orders/domain/payment_status_response.dart';

class _FakeOrdersRemote implements OrdersRemote {
  @override
  Future<PaginatedResult<Order>> listOrders({int page = 1, int perPage = 20}) async {
    return PaginatedResult(
      items: [
        Order.fromJson({
          'id': 1,
          'order_number': 'TMS-1',
          'order_status': 'paid',
          'payment_status': 'paid',
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
  Future<Order> getOrder(int id) async {
    return Order.fromJson({
      'id': id,
      'order_number': 'TMS-$id',
      'order_status': 'paid',
      'payment_status': 'paid',
      'subtotal': '100.00',
      'delivery_fee': '50.00',
      'discount_total': '0.00',
      'total': '150.00',
      'currency': 'EGP',
    });
  }

  @override
  Future<PaymentStatusResponse> getPaymentStatus(int id) async {
    return const PaymentStatusResponse(
      orderStatus: 'paid',
      paymentStatus: 'paid',
    );
  }
}

void main() {
  test('OrdersListController loads orders', () async {
    final container = ProviderContainer(
      overrides: [
        ordersRepositoryProvider.overrideWithValue(
          OrdersRepository(remote: _FakeOrdersRemote()),
        ),
      ],
    );
    addTearDown(container.dispose);

    final state = await container.read(ordersListControllerProvider.future);
    expect(state.orders, hasLength(1));
    expect(state.orders.first.orderNumber, 'TMS-1');
  });

  test('OrderDetailsController loads order by id', () async {
    final container = ProviderContainer(
      overrides: [
        ordersRepositoryProvider.overrideWithValue(
          OrdersRepository(remote: _FakeOrdersRemote()),
        ),
      ],
    );
    addTearDown(container.dispose);

    final order = await container.read(orderDetailsControllerProvider(3).future);
    expect(order.id, 3);
  });

  test('PaymentStatusController loads payment status', () async {
    final container = ProviderContainer(
      overrides: [
        ordersRepositoryProvider.overrideWithValue(
          OrdersRepository(remote: _FakeOrdersRemote()),
        ),
      ],
    );
    addTearDown(container.dispose);

    final status = await container.read(paymentStatusControllerProvider(3).future);
    expect(status.paymentStatus, 'paid');
  });
}
