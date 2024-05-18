import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';
import 'package:recharge_setu/ui_page/bottom_navigation.dart';
import '../Retailer/retailer_bottomnavigation.dart';
import '../Utilities.dart';
import '../app_text.dart';
import 'forgotpin_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  //List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());

  late FocusNode myFocusNode;
  bool message = false;

  @override
  void initState() {

    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaltPinTheme = PinTheme(
        width: 50,
        height: 60,
        textStyle: TextStyle (
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.red)
        )
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(
              height: 290,
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
                        Container(
                          child: Pinput(
                            length: 6,
                            defaultPinTheme: defaltPinTheme,
                            focusedPinTheme: defaltPinTheme.copyWith(
                                decoration: defaltPinTheme.decoration!.copyWith(
                                    border: Border.all(color: Colors.red)
                                )
                            ),

                            onCompleted: (pin) {
                              App_Text.Mpin=pin;
                              print("pin===>" + App_Text.Mpin);

                            }

                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    if(message)
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              Text("Please Enter Correct Pin",
                                style: TextStyle(color: Colors.red),)
                            ],
                          ),
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
                      onTap: () async {
                        try {
                          dynamic text = await Utilities.Downloaddata("/Users/Login");
                          App_Text.name=("${text["username"]}" );
                          App_Text.role=("${text["role"]}" );
                          App_Text.message=("${text["message"]}" );

                        } catch (ex) {

                          print(ex);
                        }
                        if(App_Text.Mpin != "123456"){
                          setState(() {
                            message = true;
                          });
                        }

                        if(App_Text.Mpin == "123456"){
                          setState(() {
                            message = false;
                          });
                        }
                        if(App_Text.role == "DISTRIBUTOR") {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              isIos: true,
                              child: BottomCollectionBoy(index: 0),
                            ),
                          );
                        }
                        if(App_Text.role == "RETAILER"){
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              isIos: true,
                              child: Retailer_Bottomnavigation(index: 0,),
                            ),
                          );
                        }
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
    );
  }
}


