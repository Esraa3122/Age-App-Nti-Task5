import 'package:age_app/src/core/style/img_app.dart';
import 'package:flutter/material.dart';

class ImgSplash extends StatelessWidget {
  const ImgSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImageApp.backgroundImage, errorBuilder: (context, error, stackTrace){
              return const Icon(
                  Icons.error_outline,
                  color: Colors.blue,
              );
            },);
  }
}