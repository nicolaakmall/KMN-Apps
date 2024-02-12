import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
// import 'package:slicing_ui_kmn_01/cubits/cubit/login_cubit.dart';
import 'package:slicing_ui_kmn_01/home_page/home_screen.dart';

// voidi main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter POST Request Example',
//       home: EmailLogin(),
//     );
//   }
// }

class EmailLogin extends StatefulWidget {
  const EmailLogin({super.key});

  // const EmailLogin({super.key});

  @override
  _EmailLoginState createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  final apiUrl = "https://reqres.in/api/login";
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> sendPostRequest() async {
    var response = await http.post(Uri.parse(apiUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "email": emailController.text,
          "password": passwordController.text,
          "userId": 1,
        }));

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Login successed"),
      ));

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Failed to login!"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // key: context.read<LoginCubit>().formKey,
          children: <Widget>[
            TextFormField(
              // controller: context.read<LoginCubit>().emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Your Email';
                }
                return null;
              },
              controller: emailController,
              decoration: const InputDecoration(hintText: "email"),
            ),
            TextFormField(
              // controller: context.read<LoginCubit>().passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Your Password';
                }
                return null;
              },
              controller: passwordController,
              decoration: const InputDecoration(hintText: "password"),
            ),
            ElevatedButton(
              onPressed: () {
                // context.read<LoginCubit>().formKey.currentState!.validate();
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
