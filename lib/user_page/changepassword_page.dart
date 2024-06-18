import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';
import 'package:recharge_setu/user_page/profile_page.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../Utilities.dart';
import '../app_text.dart';

class Change_password extends StatefulWidget {
  const Change_password({super.key});

  @override
  State<Change_password> createState() => _Change_passwordState();
}

class _Change_passwordState extends State<Change_password> {
String message = "";
String status = "";
bool click = false;
late StreamSubscription<ConnectivityResult> _connectivitySubscription;
String _connectionStatus = 'Unknown';
String connection ="";
final Connectivity _connectivity = Connectivity();
bool content =true;
@override
void initState() {
  super.initState();
  _checkInternetConnection();
  _connectivitySubscription =
      _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
}

@override
void dispose() {
  // Clean up the focus node when the Form is disposed.
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
        print(App_Text.connection);
        content = false;

      });
      print(connection);
    } else if (result == ConnectivityResult.mobile) {
      _connectionStatus = 'Connected to mobile data';
      App_Text.connection = "data is on";
      setState(() {
        content =true;
      });

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
      body: Column(
        children: [
          const SizedBox(
              height: 250,
              child: Image(image: AssetImage('images/change.png'))),

          Stack(
            alignment: Alignment.center,
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
                      const SizedBox(
                        height: 50,
                      ),
                      const Row(
                        children: [
                          Text("Enter New Password",style: TextStyle(color: Colors.red)),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
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
                                App_Text.new_Mpin = pin;
                                print("new Mpin===>" + App_Text.new_Mpin);
                              }),
                        ],
                      ),
                      const SizedBox(height: 20,),

                      const Row(
                        children: [
                          Text("Enter Confirm Password",style: TextStyle(color: Colors.red)),
                        ],
                      ),

                      const SizedBox(height: 10,),
                      Row(
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
                            App_Text.conf_Mpin = pin;
                            print("conf pin===>" + App_Text.conf_Mpin);
                          }),
                        ],
                      ),

                      const SizedBox(
                        height: 70,
                      ),
                      if(click == false)
                      InkWell(
                        child: Container(
                          height: 50,
                          width: 300,
                          color: Colors.red,
                          child: const Center(child: Text("Change",style: TextStyle(color: Colors.white,fontSize: 20),)),
                        ),
                        onTap: () async {
                          setState(() {
                            click =true;
                          });

                          if(App_Text.new_Mpin.isEmpty && App_Text.conf_Mpin.isEmpty){
                            setState(() {
                              message = "not equal";
                              print(message);
                            });
                          }

                          if(App_Text.new_Mpin == App_Text.conf_Mpin &&
                              App_Text.new_Mpin.isNotEmpty && App_Text.conf_Mpin.isNotEmpty) {

                            try {
                              dynamic pin_data =
                                  await Utilities.Downloaddata("/Users/ChangeMPIN");
                              print("${pin_data["status"]}");
                              setState(() {
                                status = "${pin_data["status"]}";
                              });


                            } catch (ex) {
                              print(ex);
                            }
                          }else{
                            setState(() {

                              message ="not equal";
                              print(message);
                            });
                          }

                        },
                      ),

                    ],
                  ),
                ),
              ),
              if(message == "not equal")
              Container(
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
                      "Conform Password Does Not Match",
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
                          message="";
                          click = false;
                        });

                      },
                    )
                  ],
                ),
              ),
              if(status == "success" && click)
              Container(
                height: 180,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_box,color: Colors.red.shade300,size: 70,),
                    const Text(
                      "MPIN Updated",
                      style: TextStyle(color: Colors.green),
                    ),
                    const SizedBox(height: 20,),
                    InkWell(
                      child: Container(
                        height: 40,
                        width: 80,
                        color: Colors.red,
                        child:  Center(child: InkWell(child: const Text("Ok",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                          onTap: (){
                          setState(() {

                            App_Text.Mpin = App_Text.new_Mpin;
                            print(App_Text.Mpin);
                            click = false;
                          });
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.leftToRight,
                                isIos: true,
                                child: const Profile(),
                              ),
                            );
                          },
                        ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              if(App_Text.connection == 'none')
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
            ],
          ),

        ],
      ),
    );
  }
}



