import 'package:flutter/material.dart';
import 'package:slicing_ui_kmn_01/home_page/our_services.dart';
import 'package:slicing_ui_kmn_01/home_page/promotion.dart';
import 'package:slicing_ui_kmn_01/login_page.dart';
import 'package:slicing_ui_kmn_01/home_page/testimonial_widget.dart';
// import 'package:slicing_ui_kmn_01/bottom_nav_bar.dart';
// import 'package:slicing_ui_kmn_01/app_bar.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key}); // before
  const HomeScreen({Key? key}) : super(key: key); //after

  @override
  Widget build(BuildContext context) {
    String selectedLanguage = 'EN';
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  // print('Login tapped');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications_none_outlined,
                        color: Colors.blue),
                    onPressed: () {
                      // print('Language icon tapped');
                    },
                  ),
                  DropdownButton<String>(
                    // value: selectedLanguage,
                    underline: Container(),
                    icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
                    items: <String>['EN', 'ES', 'FR'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      // print('Language changed to $newValue');
                    },
                  ),
                ],
              ),
            ],
          ),
          // elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [
                0.7,
                1,
              ],
              colors: [
                Colors.white,
                Colors.blue.shade200,
              ],
            ),
          ),
          child: const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 16),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: OurService(),
                    ),
                    SizedBox(height: 40),
                    promotion(),
                    SizedBox(height: 40),
                    TestimonialWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
        // bottomNavigationBar: const BottomNavBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                // title: const Text('AlertDialog Title'),
                content: SizedBox(
                  height: double.infinity,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/IconFloatingActionButton/customer-support.png',
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Hubungi Kami'),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.wifi_calling_3_outlined),
                            Text("Call Center"),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.black, width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
            child:
            const Text('Show Dialog');
          },
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          child: Image.asset(
            'assets/images/IconFloatingActionButton/customer-support.png',
            width: 30,
            height: 30,
          ),
        ),
      ),
    );
  }
}
