// part of 'login_cubit.dart';

// class LoginState {
//   final bool isloading;
//   final bool hasError;
//   final bool hasData;
//   final String? error;

//   LoginState(
//       {required this.isloading,
//       required this.hasError,
//       required this.hasData,
//       this.error});

//   LoginState copyWith(isloading, hasError, hasData, error) {
//     return LoginState(
//         hasData: hasData,
//         hasError: hasError,
//         isloading: isloading,
//         error: error);
//   }
// }

import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final bool isLoading;
  final bool hasError;
  final bool hasData;
  final String? error;

  const LoginState({
    required this.isLoading,
    required this.hasError,
    required this.hasData,
    this.error,
  });

  LoginState copyWith({
    bool? isLoading,
    bool? hasError,
    bool? hasData,
    String? error,
  }) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      hasData: hasData ?? this.hasData,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [isLoading, hasError, hasData, error];
}
