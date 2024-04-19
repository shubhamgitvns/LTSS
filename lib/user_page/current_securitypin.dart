import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/user_page/change_securitypin.dart';

import '../app_text.dart';
class Current_Security_Pin extends StatefulWidget {
  const Current_Security_Pin({super.key});

  @override
  State<Current_Security_Pin> createState() => _Current_Security_PinState();
}

class _Current_Security_PinState extends State<Current_Security_Pin> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqKPUNt3IfPBbWGtTKv4xDn0Cqw2mk730htcm8wAcizIkVJxYa-3LvtLyBfHatZ3daCCE&usqp=CAU",
                ),
              ),

              Container(
                child: Stack(
                  children: [
                    Container(
                      height: 580,
                      width: 400,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.red,
                              offset: Offset(-2.0, -2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            // const SizedBox(height: 10,),
                            Row(
                              children: [
                                SizedBox(
                                  width:300,
                                    child: Text("Enter Current Security Access Pin",style: Text_Style.heder,)),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const SizedBox(
                              height: 50,
                            ),
                            const Row(
                              children: [
                                Text("Enter Current Pin",style: TextStyle(color: Colors.red)),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextBox(),
                                TextBox(),
                                TextBox(),
                                TextBox(),

                              ],
                            ),

                            const SizedBox(
                              height: 70,
                            ),
                            InkWell(
                              child: Container(
                                height: 50,
                                width: 300,
                                color: Colors.red,
                                child: const Center(child: Text("Change",style: TextStyle(color: Colors.white,fontSize: 20),)),
                              ),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    isIos: true,
                                    child: const Chandge_Security_Pin(),
                                  ),
                                );

                              },
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5), // Optional: Add border radius
      ),
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          counterText: "",
          // border: Border.all(color: Colors.red),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red), // Red focus border
            borderRadius: BorderRadius.circular(5), // Optional: Add border radius
          ),
        ),
      ),
    );
  }
}