// import 'package:flutter/material.dart';

// class AppsBar extends StatefulWidget {
//   const AppsBar(
//       {super.key,
//       required Color backgroundColor,
//       required Row title,
//       required int elevation});

//   @override
//   State<AppsBar> createState() => _AppBarState();
// }

// class _AppBarState extends State<AppsBar> {
//   @override
//   Widget build(BuildContext context) {
//     return AppsBar(
//       backgroundColor: Colors.white,
//       title: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           GestureDetector(
//             onTap: () {
//               // print('Login tapped');
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const LoginPage()),
//               // );
//             },
//             child: const Text(
//               'Login',
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//           ),
//           Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.notifications_none_outlined,
//                     color: Colors.blue),
//                 onPressed: () {
//                   print('Language icon tapped');
//                 },
//               ),
//               DropdownButton<String>(
//                 // value: selectedLanguage,
//                 underline: Container(),
//                 icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
//                 items: <String>['EN', 'ES', 'FR'].map((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(
//                       value,
//                       style: const TextStyle(
//                         color: Colors.blue,
//                         fontSize: 16,
//                       ),
//                     ),
//                   );
//                 }).toList(),
//                 onChanged: (newValue) {
//                   print('Language changed to $newValue');
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//       elevation: 0,
//     );
//   }
// }
