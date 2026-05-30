import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/delivery_area.dart';
import '../domain/delivery_region.dart';
import 'checkout_providers.dart';

part 'delivery_controller.g.dart';

@riverpod
class DeliveryRegions extends _$DeliveryRegions {
  @override
  Future<List<DeliveryRegion>> build() {
    return ref.read(deliveryRepositoryProvider).listRegions();
  }
}

@riverpod
class DeliveryAreas extends _$DeliveryAreas {
  @override
  Future<List<DeliveryArea>> build(int regionId) {
    return ref.read(deliveryRepositoryProvider).listAreas(regionId: regionId);
  }
}
