import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';
import 'package:recharge_setu/ui_page/bottom_navigation.dart';
import 'package:recharge_setu/user_verification/login_page.dart';
import '../Retailer/retailer_bottomnavigation.dart';
import '../Utilities.dart';
import '../app_text.dart';
import '../jsonclass.dart';
import '../localdatabase.dart';
import 'forgotpin_page.dart';
import 'package:flutter_loader/flutter_loader.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();

  late FocusNode myFocusNode;
  bool message_s = false;
  bool loder = false;
  bool forgot = false;
  bool content = true;
  String message ="";
  String label =" Enter Mobile Number";

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    //************ finger print calling function **********************//
    // auth.isDeviceSupported().then(
    //       (bool isSupported) async {
    //     if (mounted) {
    //       var list = await DatabaseHandler.jsons();
    //       List<Json> lst = list;
    //       print(list);
    //       print(list[0].finger);
    //       if(list[0].finger == "true"){
    //         _authenticate();
    //       }
    //       setState(() => _supportState = isSupported
    //           ? _SupportState.supported
    //           : _SupportState.unsupported);
    //
    //     }
    //   },
    // );
    //************ finger print calling function **********************//



  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();


    super.dispose();
  }
  //************ finger print function Code **********************//
  // final LocalAuthentication auth = LocalAuthentication();
  // _SupportState _supportState = _SupportState.unknown;
  // bool? _canCheckBiometrics;
  // List<BiometricType>? _availableBiometrics;
  // String _authorized = 'Not Authorized';
  // bool _isAuthenticating = false;
  // bool fingerprint = false;
  // String user = "";
  //
  // Future<void> _checkBiometrics() async {
  //   late bool canCheckBiometrics;
  //   try {
  //     canCheckBiometrics = await auth.canCheckBiometrics;
  //   } on PlatformException catch (e) {
  //     canCheckBiometrics = false;
  //     print(e);
  //   }
  //   if (!mounted) {
  //     return;
  //   }
  //
  //   setState(() {
  //     _canCheckBiometrics = canCheckBiometrics;
  //   });
  // }
  //
  // Future<void> _getAvailableBiometrics() async {
  //   late List<BiometricType> availableBiometrics;
  //   try {
  //     availableBiometrics = await auth.getAvailableBiometrics();
  //   } on PlatformException catch (e) {
  //     availableBiometrics = <BiometricType>[];
  //     print(e);
  //   }
  //   if (!mounted) {
  //     return;
  //   }
  // }
  //
  // Future<void> _authenticate() async {
  //   bool authenticated = false;
  //   try {
  //     setState(() {
  //       _isAuthenticating = true;
  //       _authorized = 'Authenticating';
  //     });
  //     authenticated = await auth.authenticate(
  //       localizedReason: 'Let OS determine authentication method',
  //       options: const AuthenticationOptions(
  //         stickyAuth: true,
  //       ),
  //     );
  //     if (!mounted) return;
  //     setState(() async {
  //       fingerprint = true;
  //       _isAuthenticating = false;
  //       user = "step2";
  //       var list = await DatabaseHandler.jsons();
  //       List<Json> lst = list;
  //       if(list[0].role == "RETAILER") {
  //         print("retailer");
  //
  //         Navigator.push(
  //           context,
  //           PageTransition(
  //             type: PageTransitionType.scale,
  //             alignment: Alignment.topCenter,
  //             duration: Duration(milliseconds: 500),
  //             isIos: true,
  //             child: Retailer_Bottomnavigation(index: 0,),
  //           ),
  //         );
  //       }else{
  //
  //         Navigator.push(
  //           context,
  //           PageTransition(
  //             type: PageTransitionType.scale,
  //             alignment: Alignment.topCenter,
  //             duration: Duration(milliseconds: 500),
  //             isIos: true,
  //             child: BottomCollectionBoy(index: 0,),
  //           ),
  //         );
  //       }
  //     });
  //   } on PlatformException catch (e) {
  //     print(e);
  //     if (!mounted) return;
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Error - ${e.message}';
  //     });
  //     return;
  //   }
  //   if (!mounted) {
  //     return;
  //   }
  //
  //   setState(
  //           () => _authorized = authenticated ? 'Authorized' : 'Not Authorized');
  // }
  //
  // Future<void> _authenticateWithBiometrics() async {
  //   bool authenticated = false;
  //   try {
  //     setState(() {
  //       _isAuthenticating = true;
  //       _authorized = 'Authenticating';
  //     });
  //     authenticated = await auth.authenticate(
  //       localizedReason: 'Scan your fingerprint (or face or whatever) to authenticate',
  //       options: const AuthenticationOptions(
  //         stickyAuth: true,
  //         biometricOnly: true,
  //       ),
  //     );
  //     if (!mounted) return;
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Authenticating';
  //     });
  //   } on PlatformException catch (e) {
  //     print(e);
  //     if (!mounted) return;
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Error - ${e.message}';
  //     });
  //     return;
  //   }
  //   if (!mounted) {
  //     return;
  //   }
  //
  //   final String message = authenticated ? 'Authorized' : 'Not Authorized';
  //   setState(() {
  //     _authorized = message;
  //   });
  // }
  //
  // Future<void> _cancelAuthentication() async {
  //   await auth.stopAuthentication();
  //   setState(() => _isAuthenticating = false);
  // }
  //************ finger print function Code **********************//


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
         Duration(seconds: 5),
             () => "Hello world",

        ),
        loadedBuilder: (context) {
          final controller = LoaderController.of(context)!;
          //************ finger print calling function **********************//

          //  _authenticate;
          //************ finger print calling function **********************//
          return Center(
            child:Column(
              children: [
                const SizedBox(
                    height: 290, child: Image(image: AssetImage('images/pin.png'))),
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
                              Container(
                                child: Pinput(
                                    length: 6,
                                    defaultPinTheme: defaltPinTheme,
                                    focusedPinTheme: defaltPinTheme.copyWith(
                                        decoration: defaltPinTheme.decoration!
                                            .copyWith(
                                            border:
                                            Border.all(color: Colors.red))),
                                    onCompleted: (pin) {
                                      App_Text.Mpin = pin;
                                      print("pin===>" + App_Text.Mpin);
                                    }),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          Text(message,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                          const SizedBox(
                            height: 80,
                          ),
                          InkWell(
                            child: Container(
                              height: 50,
                              width: 300,
                              color: Colors.red,
                              child: const Center(
                                  child: Text(
                                    "Login ",
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  )),
                            ),
                            onTap: () async {
                              loder = true;

                              if(App_Text.message != "success" && content) {
                                print("loder");
                                controller.load();
                              }
                              if(content) {
                                try {
                                  dynamic text =
                                  await Utilities.Downloaddata("/Users/Login");
                                  App_Text.name = ("${text["username"]}");
                                  App_Text.role = ("${text["role"]}");
                                  App_Text.message = ("${text["message"]}");
                                  App_Text.status = ("${text["status"]}");
                                } catch (ex) {
                                  print(ex);
                                }

                                App_Text.dbname = App_Text.name;
                                App_Text.dbrole = App_Text.role;
                                App_Text.dbstatus = App_Text.status;
                                App_Text.dbmessage = App_Text.message;
                                App_Text.dbmpin = App_Text.Mpin;
                                // App_Text.dbfinger = "true";
                              }

                              if(App_Text.dbstatus == "status") {
                                print("Hii");
                                App_Text.dbmobile = App_Text.number.text;
                                App_Text.dbfinger = "false";
                              }


                              if(App_Text.status == "success") {

                                print("Come");

                                var javabook = Json(
                                    App_Text.id, App_Text.dbname, App_Text.dbrole,
                                    App_Text.dbstatus, App_Text.dbmessage,App_Text.dbmobile,App_Text.dbfinger, App_Text.dbmpin,App_Text.dbtpin);
                                await DatabaseHandler.updateJson(javabook);
                                print(await DatabaseHandler.jsons());
                                print(App_Text.dbname);
                                print("Update");

                                print("search");
                                var list = await DatabaseHandler.jsons();
                                List<Json> lst = list;
                                print(list);

                                //list[0].id = App_Text.id;
                                print(App_Text.id);
                              }

                              if (App_Text.status == "failed") {
                                setState(() {
                                  message_s = true;
                                });
                              } else {
                                setState(() {
                                  message_s = false;
                                });
                              }

                              if (App_Text.role == "DISTRIBUTOR" ) {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    isIos: true,
                                    child: BottomCollectionBoy(index: 0),
                                  ),
                                );
                              }
                              if (App_Text.role == "RETAILER") {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    isIos: true,
                                    child:
                                   // Retailer_FingerPrint()
                                    Retailer_Bottomnavigation(index: 0),
                                  ),
                                );
                              }
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
                                    content = false;
                                  });


                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(child: Icon(Icons.arrow_back,color: Colors.red,size: 40,),
                                onTap: (){
                                if(content) {
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
                              const SizedBox(width: 20,),
                              const Text("Go To Back",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ],
                      ),
                    ),
                // _authenticate();

                    if(message_s)
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
                              const Icon(Icons.error_outline,color: Colors.red,size: 70,),
                              const Text(
                                "Please Enter Correct Pin",
                                style: TextStyle(color: Colors.red),
                              ),
                              const SizedBox(height: 20,),
                              InkWell(
                                child: Container(
                                  height: 40,
                                  width: 80,
                                  color: Colors.red,
                                  child: const Center(child: Text("Ok",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                                ),
                                onTap: (){
                                  setState(() {
                                    message_s = false;
                                  });

                                },
                              )
                            ],
                          ),
                        ),
                      ),
                      if(forgot)
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 0),
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
                                            if (value!.isEmpty ) {
                                              setState(() {
                                                // label="";
                                              });

                                              return '!Please enter the number';
                                            }

                                            if(
                                            !RegExp(r'^(?:[+0][1-9])?[0-9]{10}$')
                                                .hasMatch(value!)){
                                              setState(() {
                                                // label="";

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
                                            enabledBorder: UnderlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                                width: 1.5,
                                              ),
                                            ),

                                            //********Focus border like hover******************8
                                            focusedBorder: const UnderlineInputBorder(
                                                // borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide(
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
                                const SizedBox(height: 10,),
                                const Text(
                                  "Are you sure update the MPIN ",
                                  style: TextStyle(color: Colors.red),
                                ),
                                const SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      child: Container(
                                        height: 40,
                                        width: 80,
                                        color: Colors.red,
                                        child: const Center(child: Text("Yes",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                                      ),
                                      onTap: () async {
                                        final url = Uri.https("ltss.pocketmoney.net.in", "/Users/ForgotMPIN", {

                                          "Mobile": App_Text.number.text,
                                          // "Mpin": App_Text.Mpin,
                                          // "pin": App_Text.Mpin,
                                          // 'newpin': App_Text.new_Mpin,
                                          // 'Mobile':App_Text.number.text



                                        } as Map<String, dynamic>?);
                                        try {
                                          final response = await http.post(url);
                                          //print("Response $response");
                                          print("status${response.statusCode}");
                                          print("Body${response.body}");
                                          final jsonResponse = convert.jsonDecode(response.body);
                                          // print(jsonResponse);
                                          setState(() {
                                            message = jsonResponse["message"];
                                            forgot = false;
                                            content =true;
                                          });
                                          return jsonResponse;
                                        } catch (e) {
                                          print(e);

                                        }
                                        

                                      },
                                    ),
                                    const SizedBox(width: 20,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          color: Colors.red,
                                          child: const Center(child: Text("No",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                                        ),
                                        onTap: (){
                                          setState(() {
                                            forgot = false;
                                            content= true;

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
