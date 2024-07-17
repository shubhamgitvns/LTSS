import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/user_verification/fingerprin_page.dart';
import 'package:recharge_setu/user_verification/pin_page.dart';
import '../Utilities.dart';
import '../jsonclass.dart';
import '../localdatabase.dart';
import '../ui_page/home_page/csc/csc_beneficiary.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();

  bool isChecked = false;
  bool terms = false;
  String label= "Enter Phone Number";

  get value => null;

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

    return WillPopScope(
      onWillPop: () async {
       if(Platform.isAndroid){
         SystemNavigator.pop();
         exit(1);
       }else{
         exit(0);
       }
        if(value != null){
          return Future.value(value);
        }else{
          return Future.value(false);
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const SizedBox(
                height: 290, child: Image(image: AssetImage('images/login.png'))),
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
                      const SizedBox(
                        height: 10,
                      ),
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
                      Form(
                        key: _formKey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 350,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty ) {
                                    setState(() {
                                      label="";
                                      terms = false;
                                      print(terms);
                                    });
                                    print(terms);
                                    return '!Please enter the number';
                                  }

                                  if(
                                  !RegExp(r'^(?:[+0][1-9])?[0-9]{10}$')
                                  .hasMatch(value!)){
                                    setState(() {
                                      label="";
                                      terms=false;
                                      print(terms);
                                    });
                                    return '!Please enter the correct number';
                                  }
                                  else {
                                    return null;
                                  }
                                },
                                autofocus: true,
                                keyboardType: TextInputType.number,
                                controller: App_Text.number,
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
                                  labelText: label,

                                  labelStyle: const TextStyle(color: Colors.red),
                                  prefixIcon: const Icon(
                                    Icons.phone,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {

                              setState(() {
                                isChecked = value!;
                                print(value);
                                terms=false;
                              });
                            },
                          ),
                          const Text("I agree all the terms and conditions")
                        ],
                      ),
                      if(terms)
                      const Text(
                        "Please tick the terms & Condition Box",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
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
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                        ),
                        onTap: () async {
                          App_Text.dbmobile= App_Text.number.text;
                          //App_Text.dbfinger ="false";
                            print("new number======================="+App_Text.dbmobile);

                          if (_formKey.currentState!.validate() && isChecked && App_Text.number.text.isNotEmpty) {
                            print("success");
                            //Wallet Api

                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                isIos: true,
                                child:  Pin(),
                               // FingerPrint(),
                              ),
                            );
                            return null;
                          }
                          if(App_Text.number.text.length >=10 && isChecked==false){
                            setState(() {
                              print(App_Text.number.text.length);
                              print(isChecked);
                              terms=true;
                            });
                          }

                        },
                      ),


                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
