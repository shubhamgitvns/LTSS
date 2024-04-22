import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/user_verification/login_page.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    super.initState();
    Timer(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Login(),));
    });

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
             child: Center(child: Image(
               image: AssetImage(
                   "images/lts.png"),
             ),
             ),
           ),
          const SizedBox(
            height: 200,
          ),

           Text("Power by Sampurna",style: TextStyle(fontSize: 20,color: Colors.grey.shade400),)
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


