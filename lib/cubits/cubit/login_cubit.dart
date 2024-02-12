// import 'package:flutter/material.dart';

// import 'package:slicing_ui_kmn_01/cubits/cubit/login_state.dart';
// // part 'login_state.dart';

// class LoginCubit extends Cubit<LoginState> {
//   LoginCubit()
//       : super(LoginState(hasData: false, hasError: false, isloading: false));

//   LoginDataSource loginDataSource = loginDataSource();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   final formKey = GlobalKey<FormState>();

//   void login() async {
//     emit(State.copyWith(true, false, false, null));
//     try {
//       await loginDataSource.login(
//           emailController.text, passwordController.text);
//       emit(state.copyWith(false, false, true, null));
//     } catch (e) {
//       emit(state.copyWith(false, true, false, e.toString()));
//     }
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:slicing_ui_kmn_01/cubits/cubit/login_state.dart';
// // // import 'login_data_source.dart'; // Import file yang berisi LoginDataSource
// // import 'package:slicing_ui_kmn_01/data_source/login_data_source.dart';

// // class LoginCubit extends Cubit<LoginState> {
// //   LoginCubit()
// //       : super(const LoginState(
// //             hasData: false, hasError: false, isLoading: false));

// //   LoginDataSource loginDataSource = LoginDataSource();
// //   TextEditingController emailController = TextEditingController();
// //   TextEditingController passwordController = TextEditingController();

// //   final formKey = GlobalKey<FormState>();

// //   void login() async {
// //     emit(state.copyWith(
// //         isLoading: true)); // Menggunakan state.copyWith untuk memperbarui state
// //     try {
// //       await loginDataSource.login(
// //           emailController.text, passwordController.text);
// //       emit(state.copyWith(
// //           hasData: true,
// //           isLoading:
// //               false)); // Menggunakan state.copyWith untuk memperbarui state
// //     } catch (e) {
// //       emit(state.copyWith(
// //           hasError: true,
// //           isLoading: false,
// //           error: e
// //               .toString())); // Menggunakan state.copyWith untuk memperbarui state
// //     }
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:slicing_ui_kmn_01/cubits/cubit/login_state.dart';
// // import 'package:slicing_ui_kmn_01/data_source/login_data_source.dart';

// // class LoginCubit extends Cubit<LoginState> {
// //   LoginCubit()
// //       : super(const LoginState(
// //             isLoading: false, hasError: false, hasData: false));

// //   final LoginDataSource loginDataSource = LoginDataSource();
// //   final TextEditingController emailController = TextEditingController();
// //   final TextEditingController passwordController = TextEditingController();
// //   final formKey = GlobalKey<FormState>();

// //   void login(BuildContext context) async {
// //     emit(state.copyWith(isLoading: true));
// //     try {
// //       await loginDataSource.login(
// //           emailController.text, passwordController.text);
// //       emit(state.copyWith(hasData: true, isLoading: false));
// //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
// //         content: Text("Login successed"),
// //       ));
// //       Navigator.pushReplacementNamed(context, '/home');
// //     } catch (e) {
// //       emit(state.copyWith(
// //           hasError: true, isLoading: false, error: e.toString()));
// //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //         content: Text("Failed to login! $e"),
// //       ));
// //     }
// //   }
// // }
