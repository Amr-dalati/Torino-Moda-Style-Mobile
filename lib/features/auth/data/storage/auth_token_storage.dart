import 'dart:convert';

import '../../../../core/storage/secure_store.dart' show SecureStorage;
import '../../domain/customer.dart';

class AuthTokenStorage {
  AuthTokenStorage(this._secureStore);

  static const accessTokenKey = 'auth_access_token';
  static const customerKey = 'auth_customer_json';

  final SecureStorage _secureStore;
  String? _cachedToken;

  String? get cachedToken => _cachedToken;

  Future<String?> readToken() async {
    _cachedToken ??= await _secureStore.read(key: accessTokenKey);
    return _cachedToken;
  }

  Future<Customer?> readCustomer() async {
    final raw = await _secureStore.read(key: customerKey);
    if (raw == null || raw.isEmpty) return null;
    try {
      final map = jsonDecode(raw) as Map<String, dynamic>;
      return Customer.fromJson(map);
    } catch (_) {
      return null;
    }
  }

  Future<void> saveSession({
    required String token,
    required Customer customer,
  }) async {
    _cachedToken = token;
    await _secureStore.write(key: accessTokenKey, value: token);
    await _secureStore.write(
      key: customerKey,
      value: jsonEncode(customer.toJson()),
    );
  }

  Future<void> clear() async {
    _cachedToken = null;
    await _secureStore.delete(key: accessTokenKey);
    await _secureStore.delete(key: customerKey);
  }
}
