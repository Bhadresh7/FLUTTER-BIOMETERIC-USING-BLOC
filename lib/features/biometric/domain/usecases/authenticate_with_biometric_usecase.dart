import 'package:custom_painting/features/biometric/domain/repository/biometric_repository.dart';

class AuthenticateWithBiometricUseCase {
  final BiometricRepository repo;

  AuthenticateWithBiometricUseCase(this.repo);

  /// here call method is used to use my useCase
  /// like this [AuthenticateWithBiometric()
  /// instead of [AuthenticateWithBiometric.call()
  Future<bool> call() async {
    return await repo.authenticateWithFingerPrint();
  }
}
