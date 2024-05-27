
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/Retailer/retailer_bottomnavigation.dart';
import 'package:recharge_setu/user_verification/pin_page.dart';
import '../app_text.dart';
import '../ui_page/bottom_navigation.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class Retailer_FingerPrint extends StatefulWidget {
  const Retailer_FingerPrint({super.key});

  @override
  State<Retailer_FingerPrint> createState() => _Retailer_FingerPrintState();
}

class _Retailer_FingerPrintState extends State<Retailer_FingerPrint> {
  final LocalAuthentication auth = LocalAuthentication();
  _SupportState _supportState = _SupportState.unknown;
  bool? _canCheckBiometrics;
  List<BiometricType>? _availableBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;
  bool fingerprint = false;
  String user="";

  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() => _supportState = isSupported
          ? _SupportState.supported
          : _SupportState.unsupported),
    );
  }

  Future<void> _checkBiometrics() async {
    late bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      canCheckBiometrics = false;
      print(e);
    }
    if (!mounted) {
      return;
    }

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometrics() async {
    late List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      availableBiometrics = <BiometricType>[];
      print(e);
    }
    if (!mounted) {
      return;
    }

    // setState(() {
    //   _availableBiometrics = availableBiometrics;
    // });
  }

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      setState(() {
        print("step1");
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(

        localizedReason: 'Let OS determine authentication method',
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
      );
      setState(() {
        fingerprint = true;
        _isAuthenticating = false;
        user ="step2";
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.scale,
            alignment: Alignment.topCenter,
            duration: Duration(milliseconds: 500),
            isIos: true,
            child: Retailer_Bottomnavigation(index: 0),
          ),
        );


      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        print("step3");
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    setState(
            () => _authorized = authenticated ? 'Authorized' : 'Not Authorized');
  }

  Future<void> _authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
        localizedReason:
        'Scan your fingerprint (or face or whatever) to authenticate',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Authenticating';
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    setState(() {
      _authorized = message;
    });
  }

  Future<void> _cancelAuthentication() async {
    await auth.stopAuthentication();
    setState(() => _isAuthenticating = false);
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const SizedBox(
                height: 250,
                child: Image(image: AssetImage('images/finger.png'))),
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
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Login with touch ID",
                              style: Text_Style.heder,
                            ),
                            Text(_authorized),
                          ],
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width:350,
                              child: Text(
                                "Use your Touch ID for the faster, easier access to your payment or transaction",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        const Image(image: AssetImage("images/fprint.png")),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width:350,
                                child: Text("All of the Touch ID fingerprints stored on this device can be used to log inot your account")),
                          ],
                        ),

                        const SizedBox(
                          height: 50,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                    border: Border.all(color: Colors.red)
                                ),

                                child: const Center(
                                    child: Text(
                                      "Skip this step",
                                      style: TextStyle(
                                        color: Colors.red,),
                                    )),
                              ),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.scale,
                                    alignment: Alignment.topCenter,
                                    duration: Duration(milliseconds: 500),
                                    isIos: true,
                                    child: Retailer_Bottomnavigation(index: 0,),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.red,
                                    border: Border.all(color: Colors.red)
                                ),
                                child: const Center(
                                    child: Text(
                                      "Turn on Touch ID",
                                      style: TextStyle(
                                        color: Colors.white,),
                                    )),
                              ),
                              onTap: (){
                               
                                _authenticate();
                                

                                if(_isAuthenticating == false){
                                  setState(() {
                                    print("========================false");
                                  });

                                }


                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                      ],
                    ),
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
enum _SupportState {
  unknown,
  supported,
  unsupported,
}



// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs, avoid_print

