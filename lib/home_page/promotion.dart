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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Promotion',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 200,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              const SizedBox(
                width: 16,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/promotion/Banner-SWA-website-KMN.jpg',
                  fit: BoxFit.cover,
                  width: 350,
                  //height: 100,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/promotion/BAO-Image.jpg',
                  fit: BoxFit.cover,
                  width: 350,
                  //height: 100,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/promotion/HomePage-LASIK-Promo-Jan24.jpg',
                  fit: BoxFit.cover,
                  width: 350,
                  //height: 100,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
