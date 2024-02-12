import 'package:flutter/material.dart';

class TestimonialWidget extends StatelessWidget {
  const TestimonialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Testimonals',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  "Lihat Semua",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 250,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              // Wrap the container with a Card widget
              Card(
                elevation: 4, // This gives a slight shadow to the card
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(7), // Keep the border radius
                ),
                child: Container(
                  width: 220,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/testimonials/3-ZDQ-RWzyo.png'),
                      const SizedBox(height: 10),
                      const Text(
                        "Ingrid Wijanarko",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit!\"",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 15),
              // Repeat for each card
              Card(
                elevation: 4, // This gives a slight shadow to the card
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(7), // Keep the border radius
                ),
                child: Container(
                  width: 220,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/testimonials/3-ZDQ-RWzyo.png'),
                      const SizedBox(height: 10), // Added for spacing
                      const Text(
                        "Ingrid Wijanarko",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit!\"",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Card(
                // elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Container(
                  width: 220,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/testimonials/3-ZDQ-RWzyo.png'),
                      const SizedBox(height: 10), // Added for spacing
                      const Text(
                        "Ingrid Wijanarko",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit!\"",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
