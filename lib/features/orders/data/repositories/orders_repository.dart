import '../../../../core/network/api/paginated_result.dart';
import '../../domain/order.dart';
import '../../domain/payment_status_response.dart';
import '../sources/orders_remote.dart';

class OrdersRepository {
  OrdersRepository({required OrdersRemote remote}) : _remote = remote;

  final OrdersRemote _remote;

  Future<PaginatedResult<Order>> listOrders({int page = 1, int perPage = 20}) {
    return _remote.listOrders(page: page, perPage: perPage);
  }

  Future<Order> getOrder(int id) => _remote.getOrder(id);

  Future<PaymentStatusResponse> getPaymentStatus(int id) =>
      _remote.getPaymentStatus(id);
}
