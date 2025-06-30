import 'package:custom_painting/features/biometric/presentation/bloc/biometric_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginWithBiometric extends StatefulWidget {
  const LoginWithBiometric({super.key});

  @override
  State<LoginWithBiometric> createState() => _LoginWithBiometricState();
}

class _LoginWithBiometricState extends State<LoginWithBiometric> {
  // @override
  // void initState() {
  //   context.read<BiometricBloc>().add(AuthenticateWithBiometricEvent());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocConsumer<BiometricBloc, BiometricState>(
            listener: (context, state) {
              if (state is BiometricAuthenticated) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Authentication successful'),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.green,
                    showCloseIcon: true,
                    closeIconColor: Colors.white,
                  ),
                );
              } else if (state is BiometricFailed) {
                print(state.message.toString());
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Authentication failed ${state.message}'),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.red,
                    showCloseIcon: true,
                    closeIconColor: Colors.white,
                  ),
                );
              }
            },
            builder: (context, state) {
              if (state is BiometricAuthenticating) {
                return CircularProgressIndicator();
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.fingerprint, size: 100, color: Colors.blue),
                  ElevatedButton(
                    onPressed:
                        () => context.read<BiometricBloc>().add(
                          AuthenticateWithBiometricEvent(),
                        ),
                    child: Text("Login With FingerPrint"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
