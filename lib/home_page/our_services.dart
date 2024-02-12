import 'package:flutter/material.dart';

class OurService extends StatefulWidget {
  const OurService({super.key});

  // const OurService({super.key});

  @override
  State<OurService> createState() => _OurServiceState();
}

class _OurServiceState extends State<OurService> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Our Services',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        GridView(
          padding: const EdgeInsets.only(top: 0),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 0,
          ),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 2,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/IconServices/appointment-book.png',
                          height: 55,
                          width: 55,
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Appointment",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 3,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                      bottom: -3,
                      child: Image.asset(
                        'assets/images/IconServices/doctor.png',
                        height: 70,
                        width: 70,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Our Doctors",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 3,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                      bottom: -3,
                      child: Image.asset(
                        'assets/images/IconServices/treatments.png',
                        height: 70,
                        width: 70,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Treatments",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 3,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
