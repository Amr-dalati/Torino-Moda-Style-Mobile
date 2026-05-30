import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_meta.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_result.dart';
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
  Future<Order> getOrder(int id) async {
    return Order.fromJson({
      'id': id,
      'order_number': 'TMS-$id',
      'order_status': 'awaiting_payment',
      'payment_status': 'pending',
      'subtotal': '100.00',
      'delivery_fee': '50.00',
      'discount_total': '0.00',
      'total': '150.00',
      'currency': 'EGP',
      'items': [],
      'payments': [],
    });
  }

  @override
  Future<PaymentStatusResponse> getPaymentStatus(int id) async {
    return const PaymentStatusResponse(
      orderStatus: 'awaiting_payment',
      paymentStatus: 'pending',
      latestPayment: LatestPayment(
        id: 1,
        status: 'pending',
        merchantReference: 'mr_1',
      ),
    );
  }
}

void main() {
  late OrdersRepository repository;

  setUp(() {
    repository = OrdersRepository(remote: _FakeOrdersRemote());
  });

  test('listOrders returns paginated orders', () async {
    final result = await repository.listOrders();
    expect(result.items, hasLength(1));
    expect(result.items.first.orderNumber, 'TMS-1');
  });

  test('getOrder returns order detail', () async {
    final order = await repository.getOrder(7);
    expect(order.id, 7);
    expect(order.orderNumber, 'TMS-7');
  });

  test('getPaymentStatus returns status payload', () async {
    final status = await repository.getPaymentStatus(7);
    expect(status.paymentStatus, 'pending');
    expect(status.latestPayment?.merchantReference, 'mr_1');
  });
}
