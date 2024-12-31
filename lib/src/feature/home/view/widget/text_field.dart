import 'package:age_app/src/core/widget/border_text.dart';
import 'package:age_app/src/feature/home/model/model_home.dart';
import 'package:flutter/material.dart';

class TextFieldHome extends StatelessWidget {
  const TextFieldHome({
    super.key,
    required this.whModle,
  });

  final MainModle whModle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: whModle.validator,
        keyboardType: whModle.keyboardType,
        controller: whModle.controller,
        decoration: InputDecoration(
          label: Text(whModle.lable),
          hintText: whModle.hint,
          prefixIcon: Icon(
            whModle.prefix,
            color: Colors.blue,
          ),
          suffix: InkWell(
              onTap: () {
                whModle.controller.clear();
              },
              child: const Icon(
                Icons.highlight_remove,
                color: Colors.red,
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: borderTextField(color: Colors.blue, radius: 20),
          focusedBorder: borderTextField(color: Colors.green, radius: 50),
          errorBorder: borderTextField(
            color: Colors.red,
            radius: 15,
          ),
        ),
      ),
    );
  }
}

