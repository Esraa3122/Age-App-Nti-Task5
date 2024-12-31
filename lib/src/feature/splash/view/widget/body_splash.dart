import 'package:age_app/src/feature/splash/view/widget/img_splash.dart';
import 'package:age_app/src/feature/splash/view/widget/text_splash.dart';
import 'package:flutter/material.dart';

class BodySplash extends StatelessWidget {
  const BodySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
           const SizedBox(height: 200,),
            ImgSplash(),
            const SizedBox(height: 20,),
            TextSplash(),
            const SizedBox(height: 20,),
            const CircularProgressIndicator(),
          ],
        ),
    );
  }
}