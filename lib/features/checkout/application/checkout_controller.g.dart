// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedCheckoutAddressIdHash() =>
    r'1e96f336969ca9b274e678c91ce95996168d70d4';

/// See also [SelectedCheckoutAddressId].
@ProviderFor(SelectedCheckoutAddressId)
final selectedCheckoutAddressIdProvider =
    NotifierProvider<SelectedCheckoutAddressId, int?>.internal(
      SelectedCheckoutAddressId.new,
      name: r'selectedCheckoutAddressIdProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$selectedCheckoutAddressIdHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SelectedCheckoutAddressId = Notifier<int?>;
String _$checkoutQuoteControllerHash() =>
    r'91064dce7716b6ecce4ad811bee761cccf6d1ece';

/// See also [CheckoutQuoteController].
@ProviderFor(CheckoutQuoteController)
final checkoutQuoteControllerProvider =
    AutoDisposeAsyncNotifierProvider<
      CheckoutQuoteController,
      CheckoutQuote?
    >.internal(
      CheckoutQuoteController.new,
      name: r'checkoutQuoteControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$checkoutQuoteControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CheckoutQuoteController = AutoDisposeAsyncNotifier<CheckoutQuote?>;
String _$checkoutSubmitControllerHash() =>
    r'd726832884ebc9bd934cd5758ab75389a3cc3448';

/// See also [CheckoutSubmitController].
@ProviderFor(CheckoutSubmitController)
final checkoutSubmitControllerProvider =
    AutoDisposeAsyncNotifierProvider<
      CheckoutSubmitController,
      CheckoutResult?
    >.internal(
      CheckoutSubmitController.new,
      name: r'checkoutSubmitControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$checkoutSubmitControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CheckoutSubmitController = AutoDisposeAsyncNotifier<CheckoutResult?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
