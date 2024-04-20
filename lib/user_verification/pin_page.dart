import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../app_text.dart';
import 'fingerprin_page.dart';
import 'forgotpin_page.dart';
class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
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
                    height: 560,
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
                                "Enter Your Pin",
                                style: Text_Style.heder,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextBox(controller: controllers[0]),
                            TextBox(controller: controllers[1]),
                            TextBox(controller: controllers[2]),
                            TextBox(controller: controllers[3]),
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
                                  "Login ",
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
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have account?",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              child: const Text(
                                " Forgot Pin",
                                style: TextStyle(
                                    color: Colors.red,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.red),
                              ),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.bottomToTop,
                                    isIos: true,
                                    child: const SignUp(),
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
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