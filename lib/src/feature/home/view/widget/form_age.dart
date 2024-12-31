import 'package:age_app/src/feature/home/model/model_home.dart';
import 'package:age_app/src/feature/home/view/screen/age_screen.dart';
import 'package:age_app/src/feature/home/view/widget/text_field.dart';
import 'package:flutter/material.dart';

class FormAge extends StatelessWidget {
  const FormAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Form(
        key: fornKey,
        child:  SizedBox(
          height: 230,
          child: ListView.builder(
                        itemCount: list3.length,
                        itemBuilder: (context, index) {
                          return TextFieldHome(whModle: list3[index]);
                        }),
        ),),
    );
  }
}