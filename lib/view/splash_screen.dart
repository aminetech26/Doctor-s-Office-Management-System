import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Start a timer with a duration of 3 seconds
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the next screen (replace with your actual navigation logic)
      Navigator.pushNamed(context, '/login_or_signup');
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF4485FD), Color(0xFF2972FE)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Image.asset('image_assets/logo.png'),
      ), // Optional content to be placed on top of the gradient
    ),);
  }
}
