import '../../domain/auth_response.dart';
import '../../domain/customer.dart';
import '../../domain/login_request.dart';
import '../../domain/register_request.dart';
import '../../../profile/domain/update_profile_request.dart';

abstract class AuthRemote {
  Future<AuthResponse> login(LoginRequest request);
  Future<AuthResponse> register(RegisterRequest request);
  Future<Customer> me();
  Future<Customer> updateProfile(UpdateProfileRequest request);
  Future<void> logout();
}
