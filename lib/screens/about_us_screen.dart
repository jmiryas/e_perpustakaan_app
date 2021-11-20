import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("About Us"),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "About Us",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "e-Perpustakaan. Dibuat oleh Rizky Ramadhan, @jmiryas (IG) & @dendengcrap (Twitter) dengan menggunakan Flutter.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
