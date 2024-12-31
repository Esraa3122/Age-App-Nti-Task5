import 'package:age_app/src/core/style/img_app.dart';
import 'package:age_app/src/core/style/string_app.dart';
import 'package:age_app/src/core/widget/app_bar.dart';
import 'package:age_app/src/feature/home/view/widget/custom_button.dart';
import 'package:age_app/src/feature/home/view/widget/form_age.dart';
import 'package:flutter/material.dart';

class AgeScreen extends StatelessWidget {
  const AgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: StringApp.appBarTitle2),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              const Image(
                image: AssetImage(ImageApp.backgroundImage),
              ),
              const SizedBox(
                height: 40,
              ),
              const FormAge(),
              CustomButtomAuth(
                  text: 'Back',
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

GlobalKey<FormState> fornKey = GlobalKey();