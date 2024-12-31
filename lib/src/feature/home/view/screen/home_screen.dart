import 'package:age_app/src/core/style/img_app.dart';
import 'package:age_app/src/core/style/string_app.dart';
import 'package:age_app/src/core/widget/app_bar.dart';
import 'package:age_app/src/feature/home/view/screen/age_screen.dart';
import 'package:age_app/src/feature/home/view/widget/custom_button.dart';
import 'package:age_app/src/feature/home/view/widget/form_main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

String result = '';
final TextEditingController nameController = TextEditingController();
final TextEditingController birthDateController = TextEditingController();
final TextEditingController ageDateController = TextEditingController();

GlobalKey<FormState> formKey = GlobalKey();

class _MyScreenState extends State<MyScreen> {
  @override
  void initState() {
    super.initState();
    nameController.addListener(() {
      setState(() {});
    });
    birthDateController.addListener(() {
      setState(() {});
    });
    ageDateController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    //TODO: implement dispose
    super.dispose();
    nameController.dispose();
    birthDateController.dispose();
    ageDateController.dispose();
  }
  

  int calculateAge() {
    DateTime today = DateTime.now();
    DateTime birthDate =
        DateFormat('yyyy-mm-dd').parse(birthDateController.text);
    int age = today.year - birthDate.year;
    return age;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: StringApp.appBarTitle),
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
              const FormMain(),
              CustomButtomAuth(
                  text: 'Show Data',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      setState(() {
                        result = calculateAge().toString();
                      });
                    }
                  }),
              const SizedBox(
                height: 30,
              ),
              CustomButtomAuth(
                  text: 'Move',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  const AgeScreen(),
                        ));
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
