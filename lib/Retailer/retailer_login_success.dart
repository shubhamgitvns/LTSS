import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:recharge_setu/Retailer/retailer_bottomnavigation.dart';

import '../app_text.dart';

class Retailer_Login_Success extends StatefulWidget {
  const Retailer_Login_Success({super.key});

  @override
  State<Retailer_Login_Success> createState() => _Retailer_Login_SuccessState();
}

class _Retailer_Login_SuccessState extends State<Retailer_Login_Success> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Retailer_Bottomnavigation(index: 0),));
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
                  backgroundImage: const AssetImage("images/check.png"),
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
