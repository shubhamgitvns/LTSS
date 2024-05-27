import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/ui_page/home_page/home_page.dart';
import 'package:recharge_setu/user_verification/login_page.dart';
import 'package:recharge_setu/user_verification/pin_page.dart';

import '../jsonclass.dart';
import '../localdatabase.dart';

import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () async {
      print("enter the timer");
      if (!mounted) return; // Check if widget is still mounted
      var list = await DatabaseHandler.jsons();
      if (!mounted) return; // Check if widget is still mounted
      List<Json> lst = list;
      if (list[0].status == "success") {
        print("enter the pin");
        App_Text.dbmobile = list[0].mobile;
        Navigator.pushReplacement (
          context,
          MaterialPageRoute(builder: (context) => Pin()),

        );
        print("over the code");
        // _authenticate();// Call _authenticate after navigation
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      }
    });
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Text("Power by Sampurna",
              style: TextStyle(fontSize: 20, color: Colors.grey.shade400))
        ],
      ),
    );
  }
}

enum _SupportState {
  unknown,
  supported,
  unsupported,
}
