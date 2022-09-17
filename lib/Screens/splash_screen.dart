import 'package:flutter/material.dart';
import 'package:toonflix_app/Screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OnBoardingScreen()))
            });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Toonflix',
          style: TextStyle(
            fontSize: 22,
            color: Colors.red,
            letterSpacing: 2.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
