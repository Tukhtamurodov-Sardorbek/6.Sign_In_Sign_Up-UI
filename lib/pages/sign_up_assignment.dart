import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({Key? key}) : super(key: key);
  static const String id = 'assignment';

  @override
  _AssignmentState createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xff424242),
                  Color(0xff5c5c5c),
                  Color(0xff7d7d7d),
                ]
            )
        ),
        child: Column(
          children: [
            /// Sign up & Welcome
            Container(
                padding: const EdgeInsets.only(top:80, bottom: 30, right: 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 40),),
                    SizedBox(height: 10),
                    Text('Welcome', style: TextStyle(color: Colors.white, fontSize: 18),),
                  ],
                )
            ),
            /// The rest
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(top: 80, right: 15, left: 15),
                child: Column(
                  children: [
                    /// Text Fields
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                blurRadius: 20,
                                spreadRadius: 5,
                                offset: const Offset(0, 10)
                            )
                          ]
                      ),
                      child: Column(
                        children: const [
                          TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Fullname',
                              contentPadding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                          Divider(height: 10,),
                          TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              contentPadding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                          Divider(height: 10,),
                          TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Phone',
                              contentPadding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                          Divider(height: 10,),
                          TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              contentPadding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    /// Sign Up
                    MaterialButton(
                      shape: const StadiumBorder(),
                      minWidth: 230,
                      height: 45,
                      color: const Color(0xff616161),
                      child: const Text('SignUp', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.center,),
                      onPressed: (){},
                    ),
                    const SizedBox(height: 30),
                    /// SNS
                    Text('Sign Up with SNS', style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                    const SizedBox(height: 30),
                    /// Facebook/Google/Apple
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MaterialButton(
                          shape: const StadiumBorder(),
                          minWidth: 110,
                          height: 45,
                          color: const Color(0xff4696eb),
                          child: const Text('Facebook', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.center,),
                          onPressed: (){},
                        ),
                        MaterialButton(
                          shape: const StadiumBorder(),
                          minWidth: 110,
                          height: 45,
                          color: const Color(0xffe15241),
                          child: const Text('Google', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.center,),
                          onPressed: (){},
                        ),
                        MaterialButton(
                          shape: const StadiumBorder(),
                          minWidth: 110,
                          height: 45,
                          color: const Color(0xff000000),
                          child: const Text('Apple', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.center,),
                          onPressed: (){},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
