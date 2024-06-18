
import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'fundtransfer.dart';
import 'package:connectivity_plus/connectivity_plus.dart';



class Retailer_List extends StatefulWidget {
  const Retailer_List({super.key});

  @override
  State<Retailer_List> createState() => _Retailer_ListState();
}

class _Retailer_ListState extends State<Retailer_List> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: InkWell(child: const Icon(Icons.arrow_back,color: Colors.white,size: 35,),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Retailer List",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          List_Page(),
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
    );
  }
}




class List_Page extends StatefulWidget {
  const List_Page({super.key});

  @override
  State<List_Page> createState() => _List_PageState();
}

class _List_PageState extends State<List_Page> {
  bool light = true;
  bool text = true;
  int n=0;

  @override
  Widget build(BuildContext context) {
    // n = length of retailer data array//
    n=App_Text.data.length;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title:Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Container(
            height: 50,
            color: Colors.white,
            child: const SizedBox(
              child: TextField(
                autofocus: true,
                cursorColor: Colors.grey,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red,
                        //width: 1.5,
                      ),
                    ),

                    //********Focus border like hover******************8
                    focusedBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red)),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.red),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.red,
                      size: 30,
                    )),
              ),
            ),
          ),
        ),
      ),
      body:GridView.count(
        childAspectRatio: 1/.4,
        crossAxisCount: 1,
        children: List.generate(n, (index) {
          return  Column(
            children: [
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 120,
                  decoration: Support_container.box,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Column(
                            children: [
                              SizedBox(
                                  height: 60,
                                  child:
                                  Image(image: AssetImage("images/inco.png")))
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            width: 230,
                            child: Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      App_Text.data[index].name,
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 230,
                                  child: Center(
                                    child: Text(
                                        App_Text.data[index].mobile,
                                        style:
                                        const TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 40),
                                  child: Text(" ₹ 1054",
                                      style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                                ),
                                const SizedBox(height: 20,),
                                InkWell(
                                  child: Container(
                                      width: 100,
                                      height: 30,
                                      decoration:
                                      const BoxDecoration(color: Colors.red),
                                      child: const Center(
                                          child: Text(
                                            "Fund Transfer",
                                            style: TextStyle(color: Colors.white),
                                          ))),
                                  onTap: (){
                                    if(App_Text.connection !='none') {
                                      Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.leftToRight,
                                        isIos: true,
                                        child: const Fund_Transfer(),
                                      ),
                                    );
                                    }
                                  },
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            // width: 80,
                          ),
                          const Column(
                            children: [
                              Text("Active",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}


