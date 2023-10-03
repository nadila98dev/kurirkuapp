import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kurirkuapp/view/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay using Timer to control the duration of the splash screen
    Timer(const Duration(seconds: 5), () {
      // Navigate to home screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Kurirku"),
      ),
    );
  }
}
