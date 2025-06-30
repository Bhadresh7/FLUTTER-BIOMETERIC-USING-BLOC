# Biometric Authentication App (Flutter)

This Flutter project implements biometric authentication (Fingerprint/Face ID) using `local_auth`, integrated with BLoC state management and a clean architecture approach.

## ✨ Features

- ✅ Biometric login using Fingerprint or Face ID
- ✅ Clean Architecture (Domain → Data → Presentation layers)
- ✅ Dependency injection using `get_it`
- ✅ BLoC for state management
- ✅ Error handling and user feedback via `SnackBar`

## 📁 Project Structure

```
lib/
├── core/                  # Common logic (if any)
├── features/
│   └── biometric/
│       ├── data/
│       │   └── biometric_repository_impl.dart
│       ├── domain/
│       │   ├── repository/biometric_repository.dart
│       │   └── usecases/authenticate_with_biometric.dart
│       └── presentation/
│           ├── bloc/
│           │   ├── biometric_bloc.dart
│           │   ├── biometric_event.dart
│           │   └── biometric_state.dart
│           └── pages/login_with_biometric.dart
|
|── locator.dart       # Dependency injection setup
└── main.dart
```

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/your-username/biometric-auth-flutter.git
cd biometric-auth-flutter
```

### 2. Install dependencies
```bash
flutter pub get
```

### 3. Configure Android

Make sure your `AndroidManifest.xml` contains the required permissions:
```xml
<uses-permission android:name="android.permission.USE_BIOMETRIC" />
<uses-permission android:name="android.permission.USE_FINGERPRINT" />
```

Update `MainActivity.kt` to extend `FlutterFragmentActivity`:
```kotlin
class MainActivity: FlutterFragmentActivity() { }
```

### 4. Run the app
```bash
flutter run
```

## 🔐 Biometric Setup

We use the [`local_auth`](https://pub.dev/packages/local_auth) package to access device biometrics.

The logic is abstracted in a `BiometricRepositoryImpl`, and authentication is triggered through a `AuthenticateWithBiometric` use case using BLoC.

## ✅ Usage

The login screen will auto-trigger biometric auth or can be triggered manually via a button. State changes are handled through `BlocConsumer`.

## 🧪 Testing

TBD — You can add tests in the `test/` directory for unit testing the BLoC and use case layers.

## 📦 Packages Used

- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [local_auth](https://pub.dev/packages/local_auth)
- [get_it](https://pub.dev/packages/get_it)
- [equatable](https://pub.dev/packages/equatable)


> Feel free to fork or star this repo if you find it helpful!
# Biometric Authentication App (Flutter)

This Flutter project implements biometric authentication (Fingerprint/Face ID) using `local_auth`, integrated with BLoC state management and a clean architecture approach.

## ✨ Features

- ✅ Biometric login using Fingerprint or Face ID
- ✅ Clean Architecture (Domain → Data → Presentation layers)
- ✅ Dependency injection using `get_it`
- ✅ BLoC for state management
- ✅ Error handling and user feedback via `SnackBar`

## 📁 Project Structure

```
lib/
├── core/                  # Common logic (if any)
├── features/
│   └── biometric/
│       ├── data/
│       │   └── biometric_repository_impl.dart
│       ├── domain/
│       │   ├── repository/biometric_repository.dart
│       │   └── usecases/authenticate_with_biometric.dart
│       └── presentation/
│           ├── bloc/
│           │   ├── biometric_bloc.dart
│           │   ├── biometric_event.dart
│           │   └── biometric_state.dart
│           └── pages/login_with_biometric.dart
|
|── locator.dart       # Dependency injection setup
└── main.dart
```

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/your-username/biometric-auth-flutter.git
cd biometric-auth-flutter
```

### 2. Install dependencies
```bash
flutter pub get
```

### 3. Configure Android

Make sure your `AndroidManifest.xml` contains the required permissions:
```xml
<uses-permission android:name="android.permission.USE_BIOMETRIC" />
<uses-permission android:name="android.permission.USE_FINGERPRINT" />
```

Update `MainActivity.kt` to extend `FlutterFragmentActivity`:
```kotlin
class MainActivity: FlutterFragmentActivity() { }
```

### 4. Run the app
```bash
flutter run
```

## 🔐 Biometric Setup

We use the [`local_auth`](https://pub.dev/packages/local_auth) package to access device biometrics.

The logic is abstracted in a `BiometricRepositoryImpl`, and authentication is triggered through a `AuthenticateWithBiometric` use case using BLoC.

## ✅ Usage

The login screen will auto-trigger biometric auth or can be triggered manually via a button. State changes are handled through `BlocConsumer`.

## 🧪 Testing

TBD — You can add tests in the `test/` directory for unit testing the BLoC and use case layers.

## 📦 Packages Used

- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [local_auth](https://pub.dev/packages/local_auth)
- [get_it](https://pub.dev/packages/get_it)
- [equatable](https://pub.dev/packages/equatable)

## 👨‍💻 Author

- Your Name – [@your_handle](https://github.com/your-username)

---

> Feel free to fork or star this repo if you find it helpful!
