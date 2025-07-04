import 'package:custom_painting/features/biometric/data/datasource/biometric_repository_impl.dart';
import 'package:custom_painting/features/biometric/domain/repository/biometric_repository.dart';
import 'package:custom_painting/features/biometric/domain/usecases/authenticate_with_biometric_usecase.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  // biometric repository with a implementation of finger print
  locator.registerLazySingleton<BiometricRepository>(
    () => BiometricRepositoryImpl(),
  );

  // passing the fingerprint implementation to the useCase
  locator.registerLazySingleton(
    () => AuthenticateWithBiometricUseCase(locator<BiometricRepository>()),
  );
}
