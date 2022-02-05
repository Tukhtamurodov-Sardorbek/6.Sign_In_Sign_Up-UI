import 'package:flutter/material.dart';
import 'package:login_ui/pages/login_sample_from_mentor.dart';
import 'package:login_ui/pages/login_ui_at_lesson.dart';
import 'package:login_ui/pages/sign_up_2.dart';
import 'package:login_ui/pages/sign_up_assignment.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, String> uis = {
    Sample1.id: 'Sign in UI Sample From Mentor',
    Lesson.id: 'Sign in UI',
    Assignment.id: 'Sign up UI',
    SignUpPage.id: 'Sign up UI',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Sign in / Sign up UI'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: uis.length,
          itemBuilder: (context, index) {
            return _card(index + 1, uis.values.toList()[index],
                uis.keys.toList()[index]);
          },
        ),
      ),
    );
  }

  Widget _card(int number, String name, String id) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: MaterialButton(
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          minVerticalPadding: 10,
          minLeadingWidth: 10,
          leading: Text(number.toString(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold, letterSpacing: 1.5)),
          title: Center(
              child: Text(name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, letterSpacing: 1.5),
                  textAlign: TextAlign.center)),
          selectedColor: Colors.blueGrey,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(id);
        },
      ),
      elevation: 10.0,
    );
  }
}
