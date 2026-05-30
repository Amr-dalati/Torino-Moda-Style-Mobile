import 'package:flutter/foundation.dart';

import '../../features/auth/domain/auth_session.dart';

/// Notifies [GoRouter] when auth changes without recreating the router instance.
class AuthRefreshListenable extends ChangeNotifier {
  AuthRefreshListenable(this._auth);

  AuthSession _auth;
  AuthSession get auth => _auth;

  void update(AuthSession auth) {
    if (_auth.status == auth.status && _auth.customer?.id == auth.customer?.id) {
      return;
    }
    _auth = auth;
    notifyListeners();
  }
}
