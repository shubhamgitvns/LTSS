import 'dart:async';

import 'package:flutter/material.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/user_verification/login_page.dart';
import 'package:recharge_setu/user_verification/pin_page.dart';

import '../jsonclass.dart';
import '../localdatabase.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  String _connectionStatus = 'Unknown';
  String connection ="";
  final Connectivity _connectivity = Connectivity();


  @override
  void initState() {
    super.initState();
    _checkInternetConnection();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);

    Timer(const Duration(seconds: 1), () async {
      print("enter the timer");
      if (!mounted) return; // Check if widget is still mounted
      var list = await DatabaseHandler.jsons();
      if (!mounted) return; // Check if widget is still mounted
      List<Json> lst = list;
      if (list[0].status == "success") {
        print("enter the pin");
        App_Text.dbmobile = list[0].mobile;
        App_Text.dbfinger = list[0].finger;
        Navigator.pushReplacement (
          context,
          MaterialPageRoute(builder: (context) => Pin()),

        );
        print("over the code");
        // _authenticate();// Call _authenticate after navigation
      }
      if(App_Text.connection == "none"){
        print("hiinjdnbcjd");
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => InternetConnectivityScreen()),
        );
      }

      if(list[0].status !="success") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      }
    });
  }

  @override
  void dispose() {
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

      } else {
        _connectionStatus = 'Unknown connection status';
      }
    });
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
            child: Center(
              child: Image(
                image: AssetImage("images/lts.png"),
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          Text("Power by Sampurna",
              style: TextStyle(fontSize: 20, color: Colors.grey.shade400))
        ],
      ),
    );
  }
}

enum _SupportState {
  unknown,
  supported,
  unsupported,
}


class InternetConnectivityScreen extends StatefulWidget {
  @override
  _InternetConnectivityScreenState createState() => _InternetConnectivityScreenState();
}

class _InternetConnectivityScreenState extends State<InternetConnectivityScreen> {
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  String _connectionStatus = 'Unknown';
  String connection ="";
  final Connectivity _connectivity = Connectivity();


  @override
  void initState() {
    super.initState();
    _checkInternetConnection();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);

  }

  @override
  void dispose() {
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
        App_Text.connection = "none";
        print(connection);
      } else if (result == ConnectivityResult.mobile) {
        _connectionStatus = 'Connected to mobile data';
      } else if (result == ConnectivityResult.wifi) {
        _connectionStatus = 'Connected to Wi-Fi';
      } else {
        _connectionStatus = 'Unknown connection status';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Connection Status:',
              style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Text(
              _connectionStatus,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            if(App_Text.connection == "none")
              const Text("Please: ON the internet and restart app again",style: TextStyle(fontWeight: FontWeight.w600),),

          ],
        ),
      ),
    );
  }
}
