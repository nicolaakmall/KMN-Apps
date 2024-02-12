// login_page.dart
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:slicing_ui_kmn_01/email_login.dart';
import 'package:slicing_ui_kmn_01/log/widget/log_page.dart';
// import 'cubits/cubit/login_cubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Login/login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.phone_iphone_outlined),
                    label: const Text('Login dengan No. HP'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.email_outlined),
                    label: const Text('Login dengan Email'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const LogPage(), // Changed EmailLogin() to LogPage()
                        ),
                      );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => BlocProvider<LoginCubit>(
                      //       create: (context) => LoginCubit(),
                      //       child: const EmailLogin(),
                      //     ),
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.login),
                    label: const Text('Login dengan Google'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 75,
                  width: 200,
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      // items: const [Text("halo")],
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.call),
      //       label: 'Calls',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.camera),
      //       label: 'Camera',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat),
      //       label: 'Chats',
      //     ),
      //   ],
      // ),
    );
  }
}

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/Login/login.jpg'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Container(
//           child: Center(
//             child: const Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 SizedBox(
//                   width: 375,
//                   height: 75,
//                   child:
//                       ElevatedButton(onPressed: () {}, child: Text("Hello1")),
//                   // Text('Hello 1'),
//                 ),
//                 SizedBox(
//                   width: 375,
//                   height: 75,
//                   child: Text('Hello 2'),
//                 ),
//                 SizedBox(
//                   width: 375,
//                   height: 75,
//                   child: Text('Hello 3'),
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 SizedBox(
//                   width: double.maxFinite,
//                   height: 100,
//                   child: Card(
//                       child: Center(
//                           child: Text('Belum punya akun? Daftar Sekarang'))),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
