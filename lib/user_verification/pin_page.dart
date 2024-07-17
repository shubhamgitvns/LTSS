import 'dart:ui';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';
import 'package:recharge_setu/ui_page/bottom_navigation.dart';
import 'package:recharge_setu/user_verification/login_page.dart';
import '../Retailer/retailer_bottomnavigation.dart';
import '../Utilities.dart';
import '../app_text.dart';
import '../controller.dart';
import '../jsonclass.dart';
import '../localdatabase.dart';
import 'package:flutter_loader/flutter_loader.dart';
import 'dart:async';
import 'package:flutter/services.dart';
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
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  late final CounterController counterController = Get.put(CounterController());

  String _connectionStatus = 'Unknown';
  String connection ="";
  final Connectivity _connectivity = Connectivity();


  late FocusNode myFocusNode;
  bool message_s = false;
  bool loder = false;
  bool forgot = false;
  bool content = true;
  bool message_box = false;
  String message ="";
  String status ="";
  String label =" Enter Mobile Number";

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    super.initState();
    _checkInternetConnection();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);

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
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> _checkInternetConnection() async {
    try {
      var connectivityResult = await _connectivity.checkConnectivity();
      _updateConnectionStatus(connectivityResult);
    } on PlatformException catch (e) {
      setState(() {
        _connectionStatus = 'Failed to get connectivity: ${e.message}';
      });
    } catch (e) {
      setState(() {
        _connectionStatus = 'Failed to get connectivity: $e';
      });
    }
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    setState(() {
      if (result == ConnectivityResult.none) {
        _connectionStatus = 'No internet connection';
        setState(() {
          App_Text.connection = "none";

        });
        print(connection);
      } else if (result == ConnectivityResult.mobile) {
        _connectionStatus = 'Connected to mobile data';
        App_Text.connection = "data is on";

      } else if (result == ConnectivityResult.wifi) {
        _connectionStatus = 'Connected to Wi-Fi';
        App_Text.connection = "data is on";
        setState(() {
          content =true;
        });
      } else {
        _connectionStatus = 'Unknown connection status';
      }
    });
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
         Duration(seconds: 6),
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
                              Pinput(
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
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  )),
                            ),
                            onTap: () async {
                              loder = true;
                              print(App_Text.connection);

//******************** If data not come throw api then during time run this loader ******************//
                              if(App_Text.message != "login success" && content && App_Text.connection!='none') {
                                controller.load();
                              }

                              if(content && App_Text.connection!='none') {
                                print("content========>");
                                print(content);
                                print(App_Text.Mpin);
                                print(App_Text.dbmobile);
                                //*************Login Api*******************
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
                                //*************** Wallet Api********************
                                try {
                                  dynamic text =
                                  await Utilities.Downloaddata("/Wallet/GetBalance");
                                  setState(() {
                                    App_Text.Main_Balance = ("${text["MAIN"]}");
                                    App_Text.Income_Balance = ("${text["INCOME"]}");
                                  });
                                  print("main balance");
                                  print(counterController.balance);
                                  counterController.increment();
                                } catch (ex) {
                                  print(ex);
                                }

                                App_Text.dbname = App_Text.name;
                                App_Text.dbrole = App_Text.role;
                                App_Text.dbstatus = App_Text.status;
                                App_Text.dbmessage = App_Text.message;
                                App_Text.dbmpin = App_Text.Mpin;
                                print(App_Text.dbmpin);
                                // App_Text.dbfinger = "true";

                              }

                              if(App_Text.dbstatus == "status") {
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
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(child: const Icon(Icons.arrow_back,color: Colors.red,size: 40,),
                                onTap: (){
                                if(content && App_Text.connection!='none') {
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
//*************** If entered pin or password is wrong than this code id run and message_s var is true else false********//
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
//*************** Internet connection is lost show this message*********************////
if(App_Text.connection == "none")
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
          Icon(Icons.error_outline,color: Colors.red,size: 70,),
          Text("OOps!",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
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
                      if(forgot)
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
                                        if(status != "success"){
                                          controller.load();
                                        }
                                        final url = Uri.https("ltss.pocketmoney.net.in", "/Users/ForgotMPIN", {
                                          "Mobile": App_Text.number.text,
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
                                            status = jsonResponse["status"];
                                            App_Text.dbmobile = App_Text.number.text;
                                            forgot = false;
                                            content =true;
                                            message_box =true;
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
                    if(message.isNotEmpty && message_box)
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
                                const Text("Message",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w600),),
                                const SizedBox(height: 10,),
                                 Text(
                                  message,
                                  style: const TextStyle(color: Colors.green,fontWeight: FontWeight.w500,fontSize: 17),
                                ),

                                const SizedBox(height: 30,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: Container(
                                      height: 40,
                                      width: 80,
                                      color: Colors.red,
                                      child: const Center(child: Text("OK",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                                    ),
                                    onTap: (){
                                      setState(() {
                                        forgot = false;
                                        content= true;
                                        message_box=false;

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
