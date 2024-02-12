import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slicing_ui_kmn_01/activity/activity_screen.dart';
import 'package:slicing_ui_kmn_01/family/family_screen.dart';
import 'package:slicing_ui_kmn_01/home_page/home_screen.dart';
import 'package:slicing_ui_kmn_01/log/cubit/log_api_cubit.dart';
import 'package:slicing_ui_kmn_01/log/cubit/log_switch_cubit.dart';
import 'package:slicing_ui_kmn_01/log/widget/log_page.dart';
import 'auth_bloc.dart';
import 'custom_bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const ActivityScreen(),
    const FamilyScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      routes: {
        '/login': (context) => const LogPage(),
        '/home': (context) => const HomeScreen(),
        '/activity': (context) => const ActivityScreen(),
        '/family': (context) => const FamilyScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LogAPICubit(),
          ),
          BlocProvider(
            create: (context) => LogSwitchCubit(),
          ),
          BlocProvider(
            create: (context) =>
                AuthenticationBloc(), // Inisialisasi AuthenticationBloc
          ),
        ],
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            return Scaffold(
              body: _widgetOptions.elementAt(_selectedIndex),
              bottomNavigationBar: CustomBottomNavBar(
                // Gunakan custom bottom nav bar
                selectedIndex: _selectedIndex,
                onItemTapped: _onItemTapped,
              ),
            );
          },
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:slicing_ui_kmn_01/home_page/home_screen.dart';
// import 'package:slicing_ui_kmn_01/log/cubit/log_api_cubit.dart';
// import 'package:slicing_ui_kmn_01/log/cubit/log_switch_cubit.dart';
// import 'package:slicing_ui_kmn_01/log/widget/log_page.dart';
// // import 'package:slicing_ui_kmn_01/login_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int _selectedIndex = 0;

//   static final List<Widget> _widgetOptions = <Widget>[
//     const HomeScreen(),
//     const ActivityScreen(),
//     const FamilyScreen(),
//     const ProfileScreen(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
//         useMaterial3: true,
//       ),
//       routes: {
//         '/login': (context) => const LogPage(),
//         '/home': (context) => const HomeScreen(),
//         '/activity': (context) => const ActivityScreen(),
//         '/family': (context) => const FamilyScreen(),
//         '/profile': (context) => const ProfileScreen(),
//       },
//       debugShowCheckedModeBanner: false,
//       // home: const HomeScreen(),
//       // home: Scaffold(
//       // appBar: AppBar(
//       //   title: Text('Bottom Navigation Bar Example'),
//       // ),
//       //   body: _widgetOptions.elementAt(_selectedIndex),
//       //   bottomNavigationBar: BottomNavigationBar(
//       //     type: BottomNavigationBarType.fixed,
//       //     items: const <BottomNavigationBarItem>[
//       //       BottomNavigationBarItem(
//       //         icon: Icon(Icons.home),
//       //         label: 'Home',
//       //       ),
//       //       BottomNavigationBarItem(
//       //         icon: Icon(Icons.library_books_outlined),
//       //         label: 'Activity',
//       //       ),
//       //       BottomNavigationBarItem(
//       //         icon: Icon(Icons.family_restroom_outlined),
//       //         label: 'My Family',
//       //       ),
//       //       BottomNavigationBarItem(
//       //         icon: Icon(Icons.person),
//       //         label: 'Profile',
//       //       ),
//       //     ],
//       //     currentIndex: _selectedIndex,
//       //     selectedItemColor: Colors.blue,
//       //     onTap: _onItemTapped,
//       //   ),
//       // ),

//       // home: MultiBlocProvider(
//       //   providers: [
//       //     BlocProvider(
//       //       create: (context) => LogAPICubit(),
//       //     ),
//       //     BlocProvider(
//       //       create: (context) => LogSwitchCubit(),
//       //     ),
//       //   ],
//       //   child: HomeScreen(),
//       // ),

//       // home: BlocProvider(
//       //   create: (context) => LogAPICubit(),
//       //   child: HomeScreen(),
//       // ),

//       home: MultiBlocProvider(
//         providers: [
//           BlocProvider(
//             create: (context) => LogAPICubit(),
//           ),
//           BlocProvider(
//             create: (context) => LogSwitchCubit(),
//           ),
//         ],
//         child: Scaffold(
//           body: _widgetOptions.elementAt(_selectedIndex),
//           bottomNavigationBar: BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             items: const <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.library_books_outlined),
//                 label: 'Activity',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.family_restroom_outlined),
//                 label: 'My Family',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.person),
//                 label: 'Profile',
//               ),
//             ],
//             currentIndex: _selectedIndex,
//             selectedItemColor: Colors.blue,
//             onTap: _onItemTapped,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ActivityScreen extends StatelessWidget {
//   const ActivityScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Activity Screen'),
//     );
//   }
// }

// class FamilyScreen extends StatelessWidget {
//   const FamilyScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Family Screen'),
//     );
//   }
// }

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen'),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
  

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
//         useMaterial3: true,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const HomeScreen(),
//     );
//   }
// }

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter POST Request Example',
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final apiUrl = "https://jsonplaceholder.typicode.com/posts";
//   TextEditingController titleController = TextEditingController();
//   TextEditingController bodyController = TextEditingController();

//   Future<void> sendPostRequest() async {
//     var response = await http.post(apiUrl,
//         headers: {"Content-Type": "application/json"},
//         body: jsonEncode({
//           "title": titleController.text,
//           "body": bodyController.text,
//           "userId": 1,
//         }));

//     if (response.statusCode == 201) {
//       Scaffold.of(context).showSnackBar(SnackBar(
//         content: Text("Post created successfully!"),
//       ));
//     } else {
//       Scaffold.of(context).showSnackBar(SnackBar(
//         content: Text("Failed to create post!"),
//       ));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter POST Request Example'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: <Widget>[
//             TextField(
//               controller: titleController,
//               decoration: InputDecoration(hintText: "Title"),
//             ),
//             TextField(
//               controller: bodyController,
//               decoration: InputDecoration(hintText: "Body"),
//             ),
//             RaisedButton(
//               onPressed: sendPostRequest,
//               child: Text("Create Post"),
//             ),
//           ],
//         ),
//       ),
//     );