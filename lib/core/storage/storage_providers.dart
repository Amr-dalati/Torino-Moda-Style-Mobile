import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'local_store.dart';
import 'secure_store.dart';

final secureStoreProvider = Provider<SecureStore>((ref) => SecureStore());

final localStoreProvider = Provider<LocalStore>((ref) => const LocalStore());
