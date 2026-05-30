import '../../domain/delivery_area.dart';
import '../../domain/delivery_region.dart';
import '../sources/delivery_remote.dart';

class DeliveryRepository {
  DeliveryRepository({required DeliveryRemote remote}) : _remote = remote;

  final DeliveryRemote _remote;

  Future<List<DeliveryRegion>> listRegions() => _remote.listRegions();

  Future<List<DeliveryArea>> listAreas({int? regionId}) =>
      _remote.listAreas(regionId: regionId);
}
