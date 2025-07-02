import 'package:custom_painting/core/service_locator.dart';
import 'package:custom_painting/features/biometric/domain/usecases/authenticate_with_biometric_usecase.dart';
import 'package:custom_painting/features/biometric/presentation/bloc/biometric_bloc.dart';
import 'package:custom_painting/features/biometric/presentation/pages/login_with_biometric.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biometric Auth',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider(
        create:
            (_) => BiometricBloc(locator<AuthenticateWithBiometricUseCase>()),
        child: const LoginWithBiometric(),
      ),
    );
  }
}
