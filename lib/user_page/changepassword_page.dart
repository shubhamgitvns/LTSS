import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../app_text.dart';
class Change_password extends StatefulWidget {
  const Change_password({super.key});

  @override
  State<Change_password> createState() => _Change_passwordState();
}

class _Change_passwordState extends State<Change_password> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: Image.network(
                  "https://img.freepik.com/free-vector/reset-password-concept-illustration_114360-7866.jpg",
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
                                Text("Change Password",style: Text_Style.heder,),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  Text("All the personal information tobe fill",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10,),

                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                Text("Enter New Pin",style: TextStyle(color: Colors.red)),
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextBox(),
                                TextBox(),
                                TextBox(),
                                TextBox(),

                              ],
                            ),
                            const SizedBox(height: 20,),

                            const Row(
                              children: [
                                Text("Enter Confirm Pin",style: TextStyle(color: Colors.red)),
                              ],
                            ),

                            const SizedBox(height: 5,),
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
                              height: 60,
                            ),
                            InkWell(
                              child: Container(
                                height: 50,
                                width: 300,
                                color: Colors.red,
                                child: const Center(child: Text("Change",style: TextStyle(color: Colors.white,fontSize: 20),)),
                              ),
                              onTap: (){

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
            borderSide: BorderSide(color: Colors.red), // Red focus border
            borderRadius: BorderRadius.circular(5), // Optional: Add border radius
          ),
        ),
      ),
    );
  }
}