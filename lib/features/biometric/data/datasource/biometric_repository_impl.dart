import 'package:custom_painting/features/biometric/domain/repository/biometric_repository.dart';
import 'package:local_auth/local_auth.dart';

class BiometricRepositoryImpl implements BiometricRepository {
  final _auth = LocalAuthentication();

  @override
  Future<bool> authenticateWithFingerPrint() async {
    final isBiometricAvailable = await _auth.canCheckBiometrics;
    if (!isBiometricAvailable) return false;

    final availableBioEMetrics = await _auth.getAvailableBiometrics();

    // in my mobile the available biometric types are BiometricType.weak and BiometricType.strong
    availableBioEMetrics.forEach((e) {
      print(e);
    });

    return await _auth.authenticate(localizedReason: 'Authentication required');
  }
}
