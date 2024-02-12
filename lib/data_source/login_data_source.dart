// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:slicing_ui_kmn_01/home_page/home_page.dart';

// class LoginDataSource {
//   BuildContext? get context => null;

//   Future<void> login(String email, String password) async {
//     final Uri loginUri = Uri.parse('https://reqres.in/api/login');
//     final Map<String, dynamic> body = {
//       "email": email,
//       "password": password,
//       "userId": 1,
//     };
//     Response response = await post(loginUri, body: body);
//     dynamic responseData = jsonDecode(response.body);

//     // if (response.statusCode == 200) {}
//     // throw Exception(responseData['error']);

//     if (response.statusCode == 200) {
//       ScaffoldMessenger.of(context!).showSnackBar(const SnackBar(
//         content: Text("Login successed"),
//       ));

//       Navigator.push(
//         context!,
//         MaterialPageRoute(
//           builder: (context) => const HomeScreen(),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context!).showSnackBar(const SnackBar(
//         content: Text("Failed to login!"),
//       ));
//     }
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:slicing_ui_kmn_01/home_page/home_screen.dart';

class LoginDataSource {
  Future<void> login(
      BuildContext context, String email, String password) async {
    final Uri loginUri = Uri.parse('https://reqres.in/api/login');
    final Map<String, dynamic> body = {
      "email": email,
      "password": password,
    };

    try {
      final http.Response response = await http.post(loginUri, body: body);
      final dynamic responseData = jsonDecode(response.body);

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Login successed"),
        ));

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Failed to login! ${responseData['error']}"),
        ));
      }
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("An error occurred!"),
      ));
    }
  }
}
