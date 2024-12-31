import 'package:age_app/src/feature/home/view/screen/home_screen.dart';
import 'package:flutter/material.dart';

class MainModle {
  final TextEditingController controller;
  final String lable;
  final String hint;
  final IconData prefix;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  MainModle({
    required this.controller,
    required this.lable,
    required this.hint,
    required this.prefix,
    required this.validator,
    required this.keyboardType,
  });
}

List<MainModle> list2 = [
  MainModle(
    controller: nameController,
    lable: "Name",
    hint: "Enter your name",
    prefix: Icons.person,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Please enter your name';
      }
      return null;
    }, keyboardType: TextInputType.text,
  ),
  MainModle(
    controller: birthDateController,
    lable: "Date Of Birth",
    hint: "Enter your birth date",
    prefix: Icons.date_range,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Please enter your birth date';
      }
      if (value.length < 3) {
        return 'The field must be at least 9 digits';
      }
      if (value.isEmpty || !RegExp(r'^\d{4}-\d{2}-\d{2}').hasMatch(value)) {
      return 'please add valid value';
    }
      return null;
    }, keyboardType: const TextInputType.numberWithOptions(),
  ),
];
List<MainModle> list3 = [
  MainModle(
    controller: nameController,
    lable: "Name",
    hint: nameController.text,
    prefix: Icons.person,
    validator: (value) {
      return null;
    }, keyboardType: TextInputType.text,
  ),
  MainModle(
    controller: ageDateController,
    lable: result,
    hint: result,
    prefix: Icons.assignment_ind,
    validator: (value) {
      return null;
    }, keyboardType: const TextInputType.numberWithOptions(),
  ),
];
