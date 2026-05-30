import '../../domain/checkout_quote.dart';
import '../../domain/checkout_quote_request.dart';
import '../../domain/checkout_request.dart';
import '../../domain/checkout_result.dart';
import '../sources/checkout_remote.dart';

class CheckoutRepository {
  CheckoutRepository({required CheckoutRemote remote}) : _remote = remote;

  final CheckoutRemote _remote;

  Future<CheckoutQuote> quote({required int addressId}) {
    return _remote.quote(CheckoutQuoteRequest(addressId: addressId));
  }

  Future<CheckoutResult> checkout({required int addressId}) {
    return _remote.checkout(CheckoutRequest(addressId: addressId));
  }
}
