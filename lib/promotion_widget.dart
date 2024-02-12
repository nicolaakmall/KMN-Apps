// import 'package:flutter/material.dart';

// class PromotionCard extends StatelessWidget {
//   final String title;
//   final String promoPrice;
//   final String terms;
//   final String backgroundImagePath;
//   final String foregroundImagePath;
//   final int limit;

//   const PromotionCard({
//     Key? key,
//     required this.title,
//     required this.promoPrice,
//     required this.terms,
//     required this.backgroundImagePath,
//     required this.foregroundImagePath,
//     required this.limit,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(16.0),
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Image.asset(
//             backgroundImagePath,
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           Positioned(
//             left: 20,
//             right: 20,
//             top: 20,
//             child: Text(
//               title,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Positioned(
//             top: 100,
//             child: Image.asset(
//               foregroundImagePath,
//               width: 150,
//             ),
//           ),
//           Positioned(
//             left: 20,
//             bottom: 50,
//             child: Text(
//               promoPrice,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 36,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Positioned(
//             left: 20,
//             bottom: 20,
//             child: Text(
//               'Hanya untuk $limit pendaftar pertama!',
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//               ),
//             ),
//           ),
//           Positioned(
//             right: 20,
//             bottom: 20,
//             child: Text(
//               terms,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 12,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
