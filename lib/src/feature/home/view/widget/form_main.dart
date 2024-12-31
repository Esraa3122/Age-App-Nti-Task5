import 'package:age_app/src/feature/home/model/model_home.dart';
import 'package:age_app/src/feature/home/view/screen/home_screen.dart';
import 'package:age_app/src/feature/home/view/widget/text_field.dart';
import 'package:flutter/material.dart';

class FormMain extends StatelessWidget {
  const FormMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Form(
        key: formKey,
        child:  SizedBox(
          height: 230,
          child: ListView.builder(
                        itemCount: list2.length,
                        itemBuilder: (context, index) {
                          return TextFieldHome(whModle: list2[index]);
                        }),
        ),),
    );
  }
}