import '../../domain/delivery_area.dart';
import '../../domain/delivery_region.dart';

abstract class DeliveryRemote {
  Future<List<DeliveryRegion>> listRegions();
  Future<List<DeliveryArea>> listAreas({int? regionId});
}
