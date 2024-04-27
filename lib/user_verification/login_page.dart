import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/user_verification/pin_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }


    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const SizedBox(
                height: 250,
                child: Image(image: AssetImage('images/login.png'))),
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
                      Text(
                        "Enter Your Mobile Number",
                        style: Text_Style.heder,
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        "We will send you OTP on that number",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 350,
                            child: TextField(
                              autofocus: true,
                              keyboardType: TextInputType.number,
                              controller: App_Text.pincode,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 1.5,
                                  ),
                                ),

                                //********Focus border like hover******************8
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.red,
                                    )),
                                labelText: "Enter Phone Number",

                                labelStyle: const TextStyle(color: Colors.red),
                                prefixIcon: const Icon(Icons.phone,color: Colors.red,),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          const Text("I agree all the terms and conditions")
                        ],
                      ),

                      const SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        child: Container(
                          height: 50,
                          width: 300,
                          color: Colors.red,
                          child: const Center(
                              child: Text(
                            "Continue",
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
                              child: const Pin(),
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
