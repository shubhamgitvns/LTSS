import 'dart:async';
import 'dart:convert' as convert;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_loader/flutter_loader.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';

import '../Retailer/retailer_bottomnavigation.dart';
import '../app_text.dart';
import '../controller.dart';
import 'login_page.dart';

class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();
  late final CounterController counterController = Get.put(CounterController());

  String _connectionStatus = 'Unknown';
  String connection = "";

  late FocusNode myFocusNode;
  bool message_s = false;
  bool loder = false;
  bool forgot = false;
  bool content = true;
  bool message_box = false;
  String message = "";
  String status = "";
  String label = " Enter Mobile Number";

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    super.initState();
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
        textStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.red)));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: DefaultLoaderBuilder(
        themeData: DefaultLoaderThemeData(
          errorMessageResolver: (error) =>
              'Custom errorMessageResolver: $error',
        ),
        loader: () => Future.delayed(
          Duration(seconds: 2),
          () => "Hello world",
        ),
        loadedBuilder: (context) {
          final controller = LoaderController.of(context)!;
          return Center(
            child: Column(
              children: [
                const SizedBox(
                    height: 290,
                    child: Image(image: AssetImage('images/pin.png'))),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.center,
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
                              Pinput(
                                  length: 6,
                                  defaultPinTheme: defaltPinTheme,
                                  focusedPinTheme: defaltPinTheme.copyWith(
                                      decoration: defaltPinTheme.decoration!
                                          .copyWith(
                                              border: Border.all(
                                                  color: Colors.red))),
                                  onCompleted: (pin) {
                                    App_Text.Mpin = pin;
                                    print("pin===>" + App_Text.Mpin);
                                  }),
                            ],
                          ),

                          const SizedBox(
                            height: 80,
                          ),
                          //****************** Login button******************//
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
                              loder = true;
                              print(App_Text.connection);

//******************** If data not come throw api then during time run this loader ******************//
                              if (App_Text.message != "login success" &&
                                  content &&
                                  App_Text.connection != 'none') {
                                controller.load();
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    isIos: true,
                                    child: Retailer_Bottomnavigation(index: 0),
                                  ),
                                );
                              }

                              // if (App_Text.role == "RETAILER") {
                              //   Navigator.push(
                              //     context,
                              //     PageTransition(
                              //       type: PageTransitionType.rightToLeft,
                              //       isIos: true,
                              //       child:
                              //           // Retailer_FingerPrint()
                              //           Retailer_Bottomnavigation(index: 0),
                              //     ),
                              //   );
                              // }
                              // Navigator.popUntil(context, (route) => false);
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
                              //*************forgot password code*********************//
                              InkWell(
                                child: const Text(
                                  " Forgot Pin",
                                  style: TextStyle(
                                      color: Colors.red,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.red),
                                ),
                                onTap: () async {
                                  App_Text.dbmobile = App_Text.number.text;
                                  setState(() {
                                    forgot = true;
                                    //content var is any other buttons and features//
                                    content = false;
                                  });
                                },
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.red,
                                  size: 40,
                                ),
                                onTap: () {
                                  if (content &&
                                      App_Text.connection != 'none') {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        isIos: true,
                                        child: const Login(),
                                      ),
                                    );
                                  }
                                },
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "Go To Back",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // _authenticate();
//*************** If entered pin or password is wrong than this code id run and message_s var is true else false********//
                    if (message_s)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 150),
                        child: Container(
                          height: 180,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.error_outline,
                                color: Colors.red,
                                size: 70,
                              ),
                              const Text(
                                "Please Enter Correct Pin",
                                style: TextStyle(color: Colors.red),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                child: Container(
                                  height: 40,
                                  width: 80,
                                  color: Colors.red,
                                  child: const Center(
                                      child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                onTap: () {
                                  setState(() {
                                    message_s = false;
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                      ),
//*************** Internet connection is lost show this message*********************////
                    if (App_Text.connection == "none")
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          height: 180,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.error_outline,
                                color: Colors.red,
                                size: 70,
                              ),
                              Text(
                                "OOps!",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 130,
                                child: Text(
                                  "Please Check Your Internet connection",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
//************* If the user click forget password text button than this code is run ***************//
                    if (forgot)
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 100),
                          child: Container(
                            height: 200,
                            width: 280,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.red),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Form(
                                  key: _formKey,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 250,
                                        child: TextFormField(
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              setState(() {
                                                // label="";
                                              });

                                              return '!Please enter the number';
                                            }

                                            if (!RegExp(
                                                    r'^(?:[+0][1-9])?[0-9]{10}$')
                                                .hasMatch(value!)) {
                                              setState(() {
                                                // label="";
                                              });
                                              return '!Please enter the correct number';
                                            } else {
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
                                            enabledBorder: UnderlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                                width: 1.5,
                                              ),
                                            ),

                                            //********Focus border like hover******************8
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                                    // borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(
                                              color: Colors.red,
                                            )),
                                            labelText: label,

                                            labelStyle: const TextStyle(
                                                color: Colors.red),
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
                                const Text(
                                  "Are you sure update the MPIN ",
                                  style: TextStyle(color: Colors.red),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      child: Container(
                                        height: 40,
                                        width: 80,
                                        color: Colors.red,
                                        child: const Center(
                                            child: Text(
                                          "Yes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                      onTap: () async {
                                        if (status != "success") {
                                          controller.load();
                                        }
                                        final url = Uri.https(
                                            "ltss.pocketmoney.net.in",
                                            "/Users/ForgotMPIN",
                                            {
                                              "Mobile": App_Text.number.text,
                                            } as Map<String, dynamic>?);
                                        try {
                                          final response = await http.post(url);
                                          //print("Response $response");
                                          print("status${response.statusCode}");
                                          print("Body${response.body}");
                                          final jsonResponse =
                                              convert.jsonDecode(response.body);
                                          // print(jsonResponse);
                                          setState(() {
                                            message = jsonResponse["message"];
                                            status = jsonResponse["status"];
                                            App_Text.dbmobile =
                                                App_Text.number.text;
                                            forgot = false;
                                            content = true;
                                            message_box = true;
                                          });
                                          return jsonResponse;
                                        } catch (e) {
                                          print(e);
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          color: Colors.red,
                                          child: const Center(
                                              child: Text(
                                            "No",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            forgot = false;
                                            content = true;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (message.isNotEmpty && message_box)
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 100),
                          child: Container(
                            height: 200,
                            width: 280,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.red),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Message",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  message,
                                  style: const TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: Container(
                                      height: 40,
                                      width: 80,
                                      color: Colors.red,
                                      child: const Center(
                                          child: Text(
                                        "OK",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        forgot = false;
                                        content = true;
                                        message_box = false;
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

enum _SupportState {
  unknown,
  supported,
  unsupported,
}
