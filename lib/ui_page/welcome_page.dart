import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/ui_page/home_page/home_page.dart';
import 'package:recharge_setu/user_verification/login_page.dart';
import 'package:recharge_setu/user_verification/pin_page.dart';

import '../jsonclass.dart';
import '../localdatabase.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() => _supportState = isSupported
          ? _SupportState.supported
          : _SupportState.unsupported),
    );
      Timer(const Duration(seconds: 3), ()async {
        var list= await DatabaseHandler.jsons();
        List<Json> lst = list;
        if(list[0].status== "success") {
          print("object");
          print(App_Text.dbmobile);
          // _authenticate();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Pin(),));
          App_Text.dbmobile = list[0].mobile;
          print(App_Text.dbmobile);
        }
        else{
          print("pin");
          print(list.length);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Login(),));
        }
      });


  }

  final LocalAuthentication auth = LocalAuthentication();
  _SupportState _supportState = _SupportState.unknown;
  bool? _canCheckBiometrics;
  List<BiometricType>? _availableBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;
  bool fingerprint = false;
  String user="";



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
            child: Home(),
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

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 200,
          ),
           const SizedBox(
             height: 100,
             child: Center(child: Image(
               image: AssetImage(
                   "images/lts.png"),
             ),
             ),
           ),
          const SizedBox(
            height: 200,
          ),

           Text("Power by Sampurna",style: TextStyle(fontSize: 20,color: Colors.grey.shade400),)
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

enum _SupportState {
  unknown,
  supported,
  unsupported,
}


