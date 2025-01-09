import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../app_text.dart';
import 'fingerprin_page.dart';
import 'forgotpin_page.dart';
class Generate_new_password extends StatefulWidget {
  const Generate_new_password({super.key});

  @override
  State<Generate_new_password> createState() => _Generate_new_passwordState();
}

class _Generate_new_passwordState extends State<Generate_new_password> {
  List<TextEditingController> controllers = List.generate(8, (index) => TextEditingController());

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const SizedBox(
                height: 250,
                child: Image(image: AssetImage('images/pin.png'))),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: 530,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
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
                      ]),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Text(
                              "Enter Your New Password",
                              style: Text_Style.heder,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Text("All the personal information tobe fill",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 50,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Text("Enter New Password",style: TextStyle(color: Colors.red)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextBox(controller: controllers[0]),
                          TextBox(controller: controllers[1]),
                          TextBox(controller: controllers[2]),
                          TextBox(controller: controllers[3]),
                        ],
                      ),
                      const SizedBox(height: 30,),

                      const Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Text("Enter Confirm Password",style: TextStyle(color: Colors.red)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextBox(controller: controllers[4]),
                          TextBox(controller: controllers[5]),
                          TextBox(controller: controllers[6]),
                          TextBox(controller: controllers[7]),
                        ],
                      ),

                      const SizedBox(
                        height: 100,
                      ),
                      InkWell(
                        child: Container(
                          height: 50,
                          width: 300,
                          color: Colors.red,
                          child: const Center(
                              child: Text(
                                "Change ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              isIos: true,
                              child: const FingerPrint(),
                            ),
                          );
                        },
                      ),

                    ],
                  ),
                )
              ],
            ),
          ],
        ),
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
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
        maxLength: 1,
        decoration: InputDecoration(
          counterText: "",
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red), // Red focus border
            borderRadius: BorderRadius.circular(5),

            // Optional: Add border radius
          ),
        ),
      ),
    );
  }
}