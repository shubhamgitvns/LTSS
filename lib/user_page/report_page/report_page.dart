import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/jsonclass.dart';
import 'package:recharge_setu/user_page/fund_request/fund_request.dart';
import 'package:recharge_setu/user_page/report_page/complaint_Report/complaint_report.dart';
import 'package:recharge_setu/user_page/report_page/dth_report/dth_report.dart';
import 'package:recharge_setu/user_page/report_page/fund_transfer_Report.dart';
import 'package:recharge_setu/user_page/report_page/income_wallet_summary.dart';
import 'package:recharge_setu/user_page/report_page/prepaid_report/prepaid_report.dart';
import 'package:recharge_setu/user_page/report_page/user_daybook_report.dart';
import 'package:recharge_setu/user_page/report_page/wallet_summury.dart';

import '../../Utilities.dart';
import '../../app_text.dart';
import '../../ui_page/home_page/retailer_page.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  bool content = true;
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  String _connectionStatus = 'Unknown';
  String connection ="";
  final Connectivity _connectivity = Connectivity();
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
          //content = false;

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
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Icon(Icons.check_box,color: Colors.red.shade200,size: 50,),
                content: const Text("Do you want Exit?",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                actions: [
                  InkWell(
                    child: Container(
                      height: 50,
                      width: 60,
                      color: Colors.red,
                      child: const Center(child: Text("Yes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                    ),
                    onTap: (){
                      if(Platform.isAndroid){
                        SystemNavigator.pop();
                        // Navigator.push(context, Home());
                        exit(1);
                      }else{
                        exit(0);
                      }
                    },
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: 60,
                      color: Colors.red,
                      child: const Center(child: Text("No",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            });
        if(value != null){
          return Future.value(value);
        }else{
          return Future.value(false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red.shade100,
          title: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'LTS',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade600)),
                const TextSpan(
                    text: ' Solutions', style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
          actions: const [
            SizedBox(
              child: Image(
                image: AssetImage("images/red_bell.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: SizedBox(
                child: Image(
                  image: AssetImage("images/i.png"),
                ),
              ),
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
                  const SizedBox(height: 10,),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      // color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.red,
                          offset: Offset(
                            2.0,
                            2.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 1.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "₹ 350.50",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Available in account",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                                height: 150,
                                child:
                                Image(image: AssetImage('images/pocket.png'))),
                            // Text("Earning",style: TextStyle(color: Colors.red),)
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 90,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.pink.shade100,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "₹1000.00",
                              style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Total Service used ",
                              style: TextStyle(color: Colors.red, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "₹359.60",
                              style: TextStyle(
                                  color: Colors.green, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Cashback",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.pink.shade50,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "₹359.60",
                              style: TextStyle(
                                  color: Colors.green, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Stock Report",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      )
                    ],
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
                          if(App_Text.connection !='none') {
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
                          if(App_Text.connection !='none') {
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
                          if(App_Text.connection !='none') {
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
                          if(App_Text.connection !='none') {
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
                          if(App_Text.connection !='none') {
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
                                      "images/dmt.png"),
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
                          if(App_Text.connection !='none') {
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
                          if(App_Text.connection !='none') {
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
                  const SizedBox(height: 20,),
                  Row(
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
                                height: 60,
                                child: Image(
                                  image: AssetImage("images/person.png"),
                                ),
                              ),
                              Text(
                                "Retailer",
                              ),
                              Text("List")
                            ],
                          ),
                        ),
                        onTap: () async {

                          if(App_Text.data.isEmpty) {
                            setState(() {
                              print("yes lode");
                              content =false;
                            });
                            try {
                              dynamic data =
                              await Utilities.Downloaddata("/Users/RetailersList");
                              print("Data is here");
                              print(data[0]["mobile"]);
                              for (int i = 0; i < data.length; i++) {
                                print(data[i]["name"]);
                                print(data[i]["mobile"]);
// This list data var initialize in the App_Text class and here add the all data throw the loop *****************//
                                App_Text.data.add(Person(name: data[i]["name"],
                                    mobile: data[i]["mobile"]));
                              }
//*********************** this method convert json to string*****************************//
                              String jsonString = data;
                              Map<String, dynamic> jsonObject = jsonDecode(
                                  jsonString);
                              print(jsonObject);
                            } catch (ex) {
                              print(ex);
                            }
                          }
                          if(App_Text.connection !='none') {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.leftToRight,
                                isIos: true,
                                child: const Retailer_List(),
                              ),
                            );

                            setState(() {
                              print("no lode");
                              content = true;
                            });
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
                                height: 35,
                                child: Image(
                                  image: AssetImage("images/fund.png"),
                                ),
                              ),
                              Text(
                                "Fund",
                              ),
                              Text("Request")
                            ],
                          ),
                        ),
                        onTap: ()  {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.leftToRight,
                              isIos: true,
                              child: const Fund_Request(),
                            ),
                          );
                          },
                      ),
                    ],
                  )
                ],
              ),
              if(content == false)
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                child: Container(
                  height: 150,
                   width: 200,
                   decoration: BoxDecoration(
                       color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     border: Border.all(color: Colors.red.shade100)
                   ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                        LoadingAnimationWidget.inkDrop(
                          color: Colors.red,
                          size: 40,
                        ),
                      const SizedBox(width: 20,),
                      Text("Loading",style: TextStyle(color: Colors.red.shade200,fontSize: 15,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
              ),
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

            ],
          )
        ),
      ),
    );
  }
}
