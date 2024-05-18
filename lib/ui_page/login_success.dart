import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/ui_page/home_page/home_page.dart';
import '../app_text.dart';
import 'bottom_navigation.dart';

class Login_Success extends StatefulWidget {
  const Login_Success({super.key});

  @override
  State<Login_Success> createState() => _Login_SuccessState();
}

class _Login_SuccessState extends State<Login_Success> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          isIos: true,
          child: BottomCollectionBoy(index: 0),
        ),
      );
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            // color: Colors.red.shade100,
            child: Column(
              children: [
                const SizedBox(height: 70,),
                const Row(
                  children: [
                    Text(" Congratulations !",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.red),),
                  ],
                ),
                const SizedBox(height: 30,),
                 CircleAvatar(
                  backgroundColor: Colors.red.shade50,
                  backgroundImage: AssetImage("images/check.png"),
                  radius: 100,
                  // backgroundImage: Icons.check,
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(App_Text.message,style: const TextStyle(color: Colors.green,fontWeight: FontWeight.w500,fontSize: 35),),
                  ],
                ),
            const SizedBox(height: 20,),
            Center(
              child: LoadingAnimationWidget.prograssiveDots(
                color: Colors.red,
                size: 50,
              ),
            )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
