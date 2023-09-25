import 'package:flutter/material.dart';
import 'package:grabby/screens/main_screen.dart';
import 'package:grabby/widgets/fade_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      navigateToMainScreen(context);
    });
  }

  void navigateToMainScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      FadePageRoute(
        builder: (context) => const MainScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: RadialGradient(
          radius: 0.4,
          center: Alignment.center,
          colors: <Color>[Color.fromARGB(60, 251, 255, 0), Color(0x00eaff00)],
        )),
        child: Image.asset(
          'assets/images/logo1.png',
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
