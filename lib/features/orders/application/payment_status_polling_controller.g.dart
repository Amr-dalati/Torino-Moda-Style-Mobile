// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_status_polling_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paymentStatusPollingControllerHash() =>
    r'0347142d43d1c5c4d401ce4ad72f90d25e06f9b6';

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

abstract class _$PaymentStatusPollingController
    extends BuildlessAutoDisposeNotifier<PaymentStatusPollingState> {
  late final int orderId;

  PaymentStatusPollingState build(int orderId);
}

/// See also [PaymentStatusPollingController].
@ProviderFor(PaymentStatusPollingController)
const paymentStatusPollingControllerProvider =
    PaymentStatusPollingControllerFamily();

/// See also [PaymentStatusPollingController].
class PaymentStatusPollingControllerFamily
    extends Family<PaymentStatusPollingState> {
  /// See also [PaymentStatusPollingController].
  const PaymentStatusPollingControllerFamily();

  /// See also [PaymentStatusPollingController].
  PaymentStatusPollingControllerProvider call(int orderId) {
    return PaymentStatusPollingControllerProvider(orderId);
  }

  @override
  PaymentStatusPollingControllerProvider getProviderOverride(
    covariant PaymentStatusPollingControllerProvider provider,
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
  String? get name => r'paymentStatusPollingControllerProvider';
}

/// See also [PaymentStatusPollingController].
class PaymentStatusPollingControllerProvider
    extends
        AutoDisposeNotifierProviderImpl<
          PaymentStatusPollingController,
          PaymentStatusPollingState
        > {
  /// See also [PaymentStatusPollingController].
  PaymentStatusPollingControllerProvider(int orderId)
    : this._internal(
        () => PaymentStatusPollingController()..orderId = orderId,
        from: paymentStatusPollingControllerProvider,
        name: r'paymentStatusPollingControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$paymentStatusPollingControllerHash,
        dependencies: PaymentStatusPollingControllerFamily._dependencies,
        allTransitiveDependencies:
            PaymentStatusPollingControllerFamily._allTransitiveDependencies,
        orderId: orderId,
      );

  PaymentStatusPollingControllerProvider._internal(
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
  PaymentStatusPollingState runNotifierBuild(
    covariant PaymentStatusPollingController notifier,
  ) {
    return notifier.build(orderId);
  }

  @override
  Override overrideWith(PaymentStatusPollingController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PaymentStatusPollingControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<
    PaymentStatusPollingController,
    PaymentStatusPollingState
  >
  createElement() {
    return _PaymentStatusPollingControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaymentStatusPollingControllerProvider &&
        other.orderId == orderId;
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
mixin PaymentStatusPollingControllerRef
    on AutoDisposeNotifierProviderRef<PaymentStatusPollingState> {
  /// The parameter `orderId` of this provider.
  int get orderId;
}

class _PaymentStatusPollingControllerProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          PaymentStatusPollingController,
          PaymentStatusPollingState
        >
    with PaymentStatusPollingControllerRef {
  _PaymentStatusPollingControllerProviderElement(super.provider);

  @override
  int get orderId => (origin as PaymentStatusPollingControllerProvider).orderId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
