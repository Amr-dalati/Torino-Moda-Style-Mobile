import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/storage/secure_store.dart';
import 'package:torino_moda_style_f/features/auth/data/storage/auth_token_storage.dart';
import 'package:torino_moda_style_f/features/auth/domain/customer.dart';

void main() {
  group('AuthTokenStorage', () {
    late InMemorySecureStorage memory;
    late AuthTokenStorage storage;

    setUp(() {
      memory = InMemorySecureStorage();
      storage = AuthTokenStorage(memory);
    });

    test('saves and reads token and customer', () async {
      const customer = Customer(
        id: 1,
        name: 'Test',
        phone: '+10000000001',
      );

      await storage.saveSession(token: 'abc', customer: customer);

      expect(await storage.readToken(), 'abc');
      expect(storage.cachedToken, 'abc');

      final restored = await storage.readCustomer();
      expect(restored?.id, 1);
      expect(restored?.name, 'Test');
    });

    test('clear removes persisted session', () async {
      await storage.saveSession(
        token: 'abc',
        customer: const Customer(id: 1, name: 'Test', phone: '+1'),
      );

      await storage.clear();

      expect(await storage.readToken(), isNull);
      expect(storage.cachedToken, isNull);
      expect(await storage.readCustomer(), isNull);
    });
  });
}
