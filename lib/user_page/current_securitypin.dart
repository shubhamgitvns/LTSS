import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';
import 'package:recharge_setu/user_page/change_securitypin.dart';
import 'package:connectivity_plus/connectivity_plus.dart';


import '../app_text.dart';
class Current_Security_Pin extends StatefulWidget {
  const Current_Security_Pin({super.key});

  @override
  State<Current_Security_Pin> createState() => _Current_Security_PinState();
}

class _Current_Security_PinState extends State<Current_Security_Pin> {
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
        width: 80,
        height: 80,
        textStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.red)));

    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(
              height: 250,
              child: Image(image: AssetImage('images/login.png'))),
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
                          SizedBox(
                            width:300,
                              child: Text("Enter Current Security Access Pin",style: Text_Style.heder,)),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const SizedBox(
                        height: 50,
                      ),
                      const Row(
                        children: [
                          Text("Enter Current T-Pin",style: TextStyle(color: Colors.red)),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Pinput(
                              length: 4,
                              defaultPinTheme: defaltPinTheme,
                              focusedPinTheme: defaltPinTheme.copyWith(
                                  decoration: defaltPinTheme.decoration!
                                      .copyWith(
                                      border:
                                      Border.all(color: Colors.red))),
                              onCompleted: (pin) {
                                App_Text.Current_Tpin = pin;
                                print(App_Text.Current_Tpin);
                              }),
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
                          if(App_Text.Current_Tpin.isNotEmpty && App_Text.connection!='none') {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                isIos: true,
                                child: const Chandge_Security_Pin(),
                              ),
                            );
                          }

                        },
                      ),

                    ],
                  ),
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