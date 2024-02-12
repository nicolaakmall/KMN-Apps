import 'package:flutter/material.dart';

class promotion extends StatefulWidget {
  const promotion({super.key});

  // const promotion({super.key});

  @override
  State<promotion> createState() => _promotionState();
}

class _promotionState extends State<promotion> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Promotion',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 165,
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(
                  'assets/images/promotion/Banner-SWA-website-KMN.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
