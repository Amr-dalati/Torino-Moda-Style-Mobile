import '../../../../core/network/api/paginated_result.dart';
import '../../domain/order.dart';
import '../../domain/payment_status_response.dart';

abstract class OrdersRemote {
  Future<PaginatedResult<Order>> listOrders({int page = 1, int perPage = 20});
  Future<Order> getOrder(int id);
  Future<PaymentStatusResponse> getPaymentStatus(int id);
}
