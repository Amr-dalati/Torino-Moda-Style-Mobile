import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/barcode_lookup_result.dart';
import 'product_providers.dart';

part 'barcode_lookup_controller.g.dart';

@riverpod
class BarcodeLookupController extends _$BarcodeLookupController {
  @override
  Future<BarcodeLookupResult?> build() async => null;

  Future<BarcodeLookupResult> lookup(String barcode) async {
    final trimmed = barcode.trim();
    if (trimmed.isEmpty) {
      throw ArgumentError('Barcode is required');
    }
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(productRepositoryProvider).lookupByBarcode(trimmed),
    );
    if (state.hasError) throw state.error!;
    return state.value!;
  }

  void clear() {
    state = const AsyncData(null);
  }
}
