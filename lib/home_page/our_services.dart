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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.calendar_today,
                          size: 32, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Appointment',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.blue,
                      child: Image.asset(
                        'assets/images/IconServices/doctor.png',
                        width: 32,
                        height: 32,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Our Doctors',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.blue,
                      child: Image.asset(
                        'assets/images/IconServices/treatments.png',
                        width: 32,
                        height: 32,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Treatments',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
