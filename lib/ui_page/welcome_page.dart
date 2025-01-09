import 'dart:async';

import 'package:flutter/material.dart';

import '../localdatabase.dart';
import '../user_authentication/login_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _connectionStatus = 'Unknown';
  String connection = "";

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () async {
      print("enter the timer");
      if (!mounted) return; // Check if widget is still mounted
      var list = await DatabaseHandler.jsons();
      if (!mounted) return; // Check if widget is still mounted
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
      // List<Json> lst = list;
      // if (list[0].status == "success") {
      //   print("enter the pin");
      //   // App_Text.dbmobile = list[0].mobile;
      //   // App_Text.dbfinger = list[0].finger;
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => Pin()),
      //   );
      //   print("over the code");
      //   // _authenticate();// Call _authenticate after navigation
      // }

      // if (list[0].status != "success") {
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => Login()),
      //   );
      // }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

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
