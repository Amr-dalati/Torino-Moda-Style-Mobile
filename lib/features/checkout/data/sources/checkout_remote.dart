import '../../domain/checkout_quote.dart';
import '../../domain/checkout_quote_request.dart';
import '../../domain/checkout_request.dart';
import '../../domain/checkout_result.dart';

abstract class CheckoutRemote {
  Future<CheckoutQuote> quote(CheckoutQuoteRequest request);
  Future<CheckoutResult> checkout(CheckoutRequest request);
}
