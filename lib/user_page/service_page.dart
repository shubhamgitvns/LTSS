import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/Retailer/retailer_bottomnavigation.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/ui_page/bottom_navigation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class Service_Page extends StatefulWidget {
  const Service_Page({super.key});

  @override
  State<Service_Page> createState() => _Service_PageState();
}

class _Service_PageState extends State<Service_Page> {
  get value => null;

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
    return WillPopScope(
      onWillPop: () async {
        if(App_Text.role == "DISTRIBUTOR") {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.leftToRight,
              isIos: true,
              child: BottomCollectionBoy(index: 0),
            ),
          );
        }else{
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.leftToRight,
              isIos: true,
              child: Retailer_Bottomnavigation(index: 0),
            ),
          );
        }
        if(value != null){
          return Future.value(value);
        }else{
          return Future.value(false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Service",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          backgroundColor: Colors.red,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Comming Soon",style: TextStyle(fontSize: 25,color: Colors.grey.shade400),)),
                // Text(App_Text.connection)
              ],
            ),
            if(App_Text.connection=="none")
            Padding(
              padding: const EdgeInsets.only(bottom: 150),
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
        )
      ),
    );
  }
}
