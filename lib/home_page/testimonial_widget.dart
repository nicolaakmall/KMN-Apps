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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Testimonals',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
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
              const SizedBox(
                width: 16,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Container(
                  width: 220,
                  color: Colors.white,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/testimonials/3-ZDQ-RWzyo.png'),
                      const Text(
                        "Ingrid Wijanarko",
                        style: TextStyle(
                          height: 2,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit!\"",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Container(
                  width: 220,
                  color: Colors.white,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/testimonials/s8PWaSMOdew.png'),
                      const Text(
                        "Rio Matret",
                        style: TextStyle(
                          height: 2,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit!\"",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Container(
                  width: 220,
                  color: Colors.white,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/testimonials/w0Y8XmFKZtw.png'),
                      const Text(
                        "Edho Zell & Mami El",
                        style: TextStyle(
                          height: 2,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit!\"",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
