// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_status_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paymentStatusControllerHash() =>
    r'568a3af4de7ea584d25940343852053d2843c394';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PaymentStatusController
    extends BuildlessAutoDisposeAsyncNotifier<PaymentStatusResponse> {
  late final int orderId;

  FutureOr<PaymentStatusResponse> build(int orderId);
}

/// See also [PaymentStatusController].
@ProviderFor(PaymentStatusController)
const paymentStatusControllerProvider = PaymentStatusControllerFamily();

/// See also [PaymentStatusController].
class PaymentStatusControllerFamily
    extends Family<AsyncValue<PaymentStatusResponse>> {
  /// See also [PaymentStatusController].
  const PaymentStatusControllerFamily();

  /// See also [PaymentStatusController].
  PaymentStatusControllerProvider call(int orderId) {
    return PaymentStatusControllerProvider(orderId);
  }

  @override
  PaymentStatusControllerProvider getProviderOverride(
    covariant PaymentStatusControllerProvider provider,
  ) {
    return call(provider.orderId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'paymentStatusControllerProvider';
}

/// See also [PaymentStatusController].
class PaymentStatusControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          PaymentStatusController,
          PaymentStatusResponse
        > {
  /// See also [PaymentStatusController].
  PaymentStatusControllerProvider(int orderId)
    : this._internal(
        () => PaymentStatusController()..orderId = orderId,
        from: paymentStatusControllerProvider,
        name: r'paymentStatusControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$paymentStatusControllerHash,
        dependencies: PaymentStatusControllerFamily._dependencies,
        allTransitiveDependencies:
            PaymentStatusControllerFamily._allTransitiveDependencies,
        orderId: orderId,
      );

  PaymentStatusControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.orderId,
  }) : super.internal();

  final int orderId;

  @override
  FutureOr<PaymentStatusResponse> runNotifierBuild(
    covariant PaymentStatusController notifier,
  ) {
    return notifier.build(orderId);
  }

  @override
  Override overrideWith(PaymentStatusController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PaymentStatusControllerProvider._internal(
        () => create()..orderId = orderId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        orderId: orderId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    PaymentStatusController,
    PaymentStatusResponse
  >
  createElement() {
    return _PaymentStatusControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaymentStatusControllerProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PaymentStatusControllerRef
    on AutoDisposeAsyncNotifierProviderRef<PaymentStatusResponse> {
  /// The parameter `orderId` of this provider.
  int get orderId;
}

class _PaymentStatusControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          PaymentStatusController,
          PaymentStatusResponse
        >
    with PaymentStatusControllerRef {
  _PaymentStatusControllerProviderElement(super.provider);

  @override
  int get orderId => (origin as PaymentStatusControllerProvider).orderId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
