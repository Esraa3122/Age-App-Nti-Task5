import 'package:age_app/src/feature/home/view/screen/home_screen.dart';
import 'package:age_app/src/feature/splash/view/widget/body_splash.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const MyScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BodySplash();
  }
}
