import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/checkout_quote.dart';
import '../domain/checkout_result.dart';
import 'checkout_providers.dart';

part 'checkout_controller.g.dart';

@Riverpod(keepAlive: true)
class SelectedCheckoutAddressId extends _$SelectedCheckoutAddressId {
  @override
  int? build() => null;

  void select(int? addressId) => state = addressId;
}

@riverpod
class CheckoutQuoteController extends _$CheckoutQuoteController {
  @override
  Future<CheckoutQuote?> build() async => null;

  Future<void> loadQuote(int addressId) async {
    ref.read(selectedCheckoutAddressIdProvider.notifier).select(addressId);
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(checkoutRepositoryProvider).quote(addressId: addressId),
    );
  }

  void clear() {
    state = const AsyncData(null);
  }
}

@riverpod
class CheckoutSubmitController extends _$CheckoutSubmitController {
  @override
  Future<CheckoutResult?> build() async => null;

  Future<CheckoutResult> submit(int addressId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(checkoutRepositoryProvider).checkout(addressId: addressId),
    );
    if (state.hasError) throw state.error!;
    return state.value!;
  }

  void clear() {
    state = const AsyncData(null);
  }
}
