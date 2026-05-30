// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deliveryRegionsHash() => r'dca10c3727603fc21bf21ff16b3a4d396169be30';

/// See also [DeliveryRegions].
@ProviderFor(DeliveryRegions)
final deliveryRegionsProvider =
    AutoDisposeAsyncNotifierProvider<
      DeliveryRegions,
      List<DeliveryRegion>
    >.internal(
      DeliveryRegions.new,
      name: r'deliveryRegionsProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$deliveryRegionsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$DeliveryRegions = AutoDisposeAsyncNotifier<List<DeliveryRegion>>;
String _$deliveryAreasHash() => r'9140537210ae770839d3ea77685898e704615636';

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

abstract class _$DeliveryAreas
    extends BuildlessAutoDisposeAsyncNotifier<List<DeliveryArea>> {
  late final int regionId;

  FutureOr<List<DeliveryArea>> build(int regionId);
}

/// See also [DeliveryAreas].
@ProviderFor(DeliveryAreas)
const deliveryAreasProvider = DeliveryAreasFamily();

/// See also [DeliveryAreas].
class DeliveryAreasFamily extends Family<AsyncValue<List<DeliveryArea>>> {
  /// See also [DeliveryAreas].
  const DeliveryAreasFamily();

  /// See also [DeliveryAreas].
  DeliveryAreasProvider call(int regionId) {
    return DeliveryAreasProvider(regionId);
  }

  @override
  DeliveryAreasProvider getProviderOverride(
    covariant DeliveryAreasProvider provider,
  ) {
    return call(provider.regionId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deliveryAreasProvider';
}

/// See also [DeliveryAreas].
class DeliveryAreasProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          DeliveryAreas,
          List<DeliveryArea>
        > {
  /// See also [DeliveryAreas].
  DeliveryAreasProvider(int regionId)
    : this._internal(
        () => DeliveryAreas()..regionId = regionId,
        from: deliveryAreasProvider,
        name: r'deliveryAreasProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$deliveryAreasHash,
        dependencies: DeliveryAreasFamily._dependencies,
        allTransitiveDependencies:
            DeliveryAreasFamily._allTransitiveDependencies,
        regionId: regionId,
      );

  DeliveryAreasProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.regionId,
  }) : super.internal();

  final int regionId;

  @override
  FutureOr<List<DeliveryArea>> runNotifierBuild(
    covariant DeliveryAreas notifier,
  ) {
    return notifier.build(regionId);
  }

  @override
  Override overrideWith(DeliveryAreas Function() create) {
    return ProviderOverride(
      origin: this,
      override: DeliveryAreasProvider._internal(
        () => create()..regionId = regionId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        regionId: regionId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<DeliveryAreas, List<DeliveryArea>>
  createElement() {
    return _DeliveryAreasProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeliveryAreasProvider && other.regionId == regionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, regionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeliveryAreasRef
    on AutoDisposeAsyncNotifierProviderRef<List<DeliveryArea>> {
  /// The parameter `regionId` of this provider.
  int get regionId;
}

class _DeliveryAreasProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          DeliveryAreas,
          List<DeliveryArea>
        >
    with DeliveryAreasRef {
  _DeliveryAreasProviderElement(super.provider);

  @override
  int get regionId => (origin as DeliveryAreasProvider).regionId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
