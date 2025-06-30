part of 'biometric_bloc.dart';

sealed class BiometricState extends Equatable {
  @override
  List<Object> get props => [];
}

final class BiometricInitial extends BiometricState {
  @override
  List<Object> get props => [];
}

class BiometricAuthenticating extends BiometricState {}

class BiometricAuthenticated extends BiometricState {}

class BiometricFailed extends BiometricState {
  final String message;

  BiometricFailed(this.message);

  @override
  List<Object> get props => [message];
}
