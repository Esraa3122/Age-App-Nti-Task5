import 'package:age_app/src/core/style/text_style.dart';
import 'package:flutter/material.dart';

AppBar appBar({required String title}) {
  return AppBar(
    backgroundColor: Colors.blue,
    elevation: 0,
    title: Text(
      title,
      style: appBarHomeStyle(),
    ),
    centerTitle: true,
  );
}