import 'dart:async';

import 'package:flutter/material.dart';

import '../localdatabase.dart';
import '../user_authentication/login_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () async {
      print("enter the timer");
      var list = await DatabaseHandler.jsons();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          Widget content = SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 200,
                ),
                const SizedBox(
                  height: 100,
                  child: Center(
                    child: Image(
                      image: AssetImage("images/lts.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                Text(
                  "Power by Sampurna",
                  style: TextStyle(fontSize: 20, color: Colors.grey.shade400),
                ),
              ],
            ),
          );

          if (constraints.maxWidth > 600) {
            // Larger screen size
            return Container(
              margin: EdgeInsets.all(16.0),
              child: content,
            );
          } else {
            // Smaller screen size
            return Container(
              margin: EdgeInsets.all(8.0),
              child: content,
            );
          }
        },
      ),
    );
  }
}
