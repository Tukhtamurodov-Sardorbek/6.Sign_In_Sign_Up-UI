import 'package:flutter/material.dart';
import 'package:login_ui/home_page.dart';
import 'package:login_ui/pages/login_sample_from_mentor.dart';
import 'package:login_ui/pages/login_ui_at_lesson.dart';
import 'package:login_ui/pages/sign_up_2.dart';
import 'package:login_ui/pages/sign_up_assignment.dart';


void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        Sample1.id: (context) => const Sample1(),
        Lesson.id: (context) => const Lesson(),
        Assignment.id: (context) => const Assignment(),
        SignUpPage.id: (context) => const SignUpPage(),
      },
    );
  }
}
