part of 'biometric_bloc.dart';

sealed class BiometricEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class BiometricLoadingEvent extends BiometricEvent {}

class AuthenticateWithBiometricEvent extends BiometricEvent {}
