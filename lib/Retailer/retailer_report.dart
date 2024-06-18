import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/Retailer/retailer_bottomnavigation.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/user_page/report_page/complaint_Report/complaint_report.dart';
import 'package:recharge_setu/user_page/report_page/dth_report/dth_report.dart';
import 'package:recharge_setu/user_page/report_page/fund_transfer_Report.dart';
import 'package:recharge_setu/user_page/report_page/income_wallet_summary.dart';
import 'package:recharge_setu/user_page/report_page/prepaid_report/prepaid_report.dart';
import 'package:recharge_setu/user_page/report_page/user_daybook_report.dart';
import 'package:recharge_setu/user_page/report_page/wallet_summury.dart';
import 'package:connectivity_plus/connectivity_plus.dart';


class Retailer_Report extends StatefulWidget {
  const Retailer_Report({super.key});

  @override
  State<Retailer_Report> createState() => _Retailer_ReportState();
}

class _Retailer_ReportState extends State<Retailer_Report> {
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
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.leftToRight,
            isIos: true,
            child: Retailer_Bottomnavigation(index: 2,),
          ),
        );
       
        if(value != null){
          return Future.value(value);
        }else{
          return Future.value(false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red,
          title: const Text("Report",style: TextStyle(color: Colors.white,fontSize: 25),),
          actions: const [
            SizedBox(
              child:Image(
                image: AssetImage(
                    "images/white_bell.png"),
              ),  ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: SizedBox(
                child:Image(
                  image: AssetImage(
                      "images/i_wht.png"),
                ),  ),
            ),
          ],
        ),
        body:  SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.grey.shade50,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height:50,
                                child:Image(
                                  image: AssetImage(
                                      "images/mobile_th.png"),
                                ), ),

                              Text(
                                "Prepaid",
                              ),
                              Text(
                                "Report",
                              ),
                            ],
                          ),
                        ),
                        onTap: (){
    if(content) {
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.leftToRight,
          isIos: true,
          child: const prepaid_Report(),
        ),
      );
    }
                        },
                      ),
                      Container(
                        height: 120,
                        width: 90,
                        color: Colors.grey.shade50,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("images/water.png")),
                            SizedBox(height: 10,),
                            Text(
                              "DMT",
                            ),
                            Text(
                              "Report",
                            ),

                          ],
                        ),
                      ),
                      InkWell(
                        child: Container(
                          height: 120,
                          width: 90,
                          color: Colors.grey.shade50,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height:50,
                                child:Image(
                                  image: AssetImage(
                                      "images/dth.png"),
                                ), ),

                              Text(
                                "DTH",
                              ),
                              Text("Report")
                            ],
                          ),
                        ),
                        onTap: (){
    if(content) {
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.leftToRight,
          isIos: true,
          child: const DTH_Report(),
        ),
      );
    }
                        },
                      ),

                    ],
                  ),
                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 120,
                        width: 90,
                        color: Colors.grey.shade50,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height:50,
                              child:Image(
                                image: AssetImage(
                                    "images/landline.png"),
                              ), ),

                            Text(
                              "AEPS",
                            ),
                            Text(
                              "Report",
                            ),


                          ],
                        ),
                      ),
                      InkWell(
                        child: Container(
                          height: 120,
                          width: 90,
                          color: Colors.grey.shade50,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage("images/ic_electricity.png")),
                              SizedBox(height: 10,),
                              Text(
                                "Complaint",
                              ),
                              Text(
                                "Report",
                              ),

                            ],
                          ),
                        ),
                        onTap: (){
    if(content) {
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.leftToRight,
          isIos: true,
          child: const Complent_Report(),
        ),
      );
    }
                        },
                      ),
                      InkWell(
                        child: Container(
                          height: 120,
                          width: 90,
                          color: Colors.grey.shade50,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height:50,
                                child:Image(
                                  image: AssetImage(
                                      "images/gasl.png"),
                                ), ),

                              Text(
                                "Use Daybook ",
                              ),
                              Text(
                                "Report",
                              ),
                            ],
                          ),
                        ),
                        onTap: (){
    if(content) {
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.leftToRight,
          isIos: true,
          child: const User_Daybook(),
        ),
      );
    }

                        },
                      ),

                    ],
                  ),
                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        child: Container(
                          height: 120,
                          width: 90,
                          color: Colors.grey.shade50,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height:30,
                                child:Image(
                                  image: AssetImage(
                                      "images/wallet.png"),
                                ), ),
                              SizedBox(height: 5,),

                              Text(
                                "Wallet",
                              ),
                              Text(
                                "Summary",
                              ),


                            ],
                          ),
                        ),
                        onTap: (){
    if(content) {
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.leftToRight,
          isIos: true,
          child: const Wallet_Summary(),
        ),
      );
    }

                        },
                      ),
                      InkWell(
                        child: Container(
                          height: 120,
                          width: 90,
                          color: Colors.grey.shade50,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height:40,
                                child:Image(
                                  image: AssetImage(
                                      "images/fund.png"),
                                ), ),
                              SizedBox(height: 5,),
                              Text(
                                "Fund",
                              ),

                              Text(
                                "Transfer",
                              ),
                              Text(
                                "Report",
                              ),


                            ],
                          ),
                        ),
                        onTap: (){
    if(content) {
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.leftToRight,
          isIos: true,
          child: const Fund_Transfer_Report(),
        ),
      );
    }

                        },
                      ),
                      InkWell(
                        child: Container(
                          height: 120,
                          width: 90,
                          color: Colors.grey.shade50,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height:30,
                                child:Image(
                                  image: AssetImage(
                                      "images/wallet.png"),
                                ), ),
                              SizedBox(height: 5,),
                              Text(
                                "Income",
                              ),

                              Text(
                                "Wallet",
                              ),
                              Text(
                                "Summary",
                              ),


                            ],
                          ),
                        ),
                        onTap: (){
    if(content) {
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.leftToRight,
          isIos: true,
          child: const Income_wallet(),
        ),
      );
    }

                        },
                      ),

                    ],
                  ),

                ],
              ),
              if(App_Text.connection=='none')
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
        ),
      ),
    );
  }
}
