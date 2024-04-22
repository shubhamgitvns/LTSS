import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/user_page/changepassword_page.dart';

import '../app_text.dart';

class Current_password extends StatefulWidget {
  const Current_password({super.key});


  @override
  State<Current_password> createState() => _Current_passwordState();
}

class _Current_passwordState extends State<Current_password> {
  List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(
              height: 250,
              child: Image(image: AssetImage('images/login.png'))),
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
                            Text("Enter Current Password",style: Text_Style.heder,),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const SizedBox(
                          height: 50,
                        ),
                        const Row(
                          children: [
                            Text("Enter Current Password",style: TextStyle(color: Colors.red)),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextBox(controller: controllers[0]),
                            TextBox(controller: controllers[1]),
                            TextBox(controller: controllers[2]),
                            TextBox(controller: controllers[3]),
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
                                child: const Change_password(),
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
    );
  }
}



class TextBox extends StatelessWidget {
  final TextEditingController controller;

  const TextBox({Key? key, required this.controller}) : super(key: key);

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
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        maxLength: 1,
        decoration: InputDecoration(
          counterText: "",
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red), // Red focus border
            borderRadius: BorderRadius.circular(5), // Optional: Add border radius
          ),
        ),
      ),
    );
  }
}