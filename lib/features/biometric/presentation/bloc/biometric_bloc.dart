import 'package:bloc/bloc.dart';
import 'package:custom_painting/features/biometric/domain/usecases/authenticate_with_biometric_usecase.dart';
import 'package:equatable/equatable.dart';

part 'biometric_event.dart';
part 'biometric_state.dart';

class BiometricBloc extends Bloc<BiometricEvent, BiometricState> {
  final AuthenticateWithBiometricUseCase authenticateWithBiometricUseCase;

  BiometricBloc(this.authenticateWithBiometricUseCase)
    : super(BiometricInitial()) {
    on<AuthenticateWithBiometricEvent>((event, emit) async {
      emit(BiometricAuthenticating());

      try {
        final result = await authenticateWithBiometricUseCase();
        if (result) {
          emit(BiometricAuthenticated());
        } else {
          emit(BiometricFailed("Authentication failed"));
        }
      } catch (e) {
        emit(BiometricFailed("Error: ${e.toString()}"));
      }
    });

    on<BiometricLoadingEvent>((event, emit) {
      emit(BiometricAuthenticating());
    });
  }
}
