import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/ui_page/home_page/card/card.dart';
import 'package:recharge_setu/ui_page/home_page/csc/csc.dart';
import 'package:recharge_setu/ui_page/home_page/dmt/dmt.dart';
import 'package:recharge_setu/ui_page/home_page/dth/dth.dart';
import 'package:recharge_setu/ui_page/home_page/electricity/electicity.dart';
import 'package:recharge_setu/ui_page/home_page/google_pay.dart';
import 'package:recharge_setu/ui_page/home_page/payout/payout.dart';
import 'package:recharge_setu/ui_page/home_page/prepaid/prepaid_form.dart';
import 'package:recharge_setu/ui_page/home_page/upi/upi.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../app_text.dart';
import '../../user_page/fund_request/fund_request.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  String _connectionStatus = 'Unknown';
  String connection = "";
  final Connectivity _connectivity = Connectivity();
  bool content = true;
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
          content = true;
        });
      } else if (result == ConnectivityResult.wifi) {
        _connectionStatus = 'Connected to Wi-Fi';
        App_Text.connection = "data is on";
        setState(() {
          content = true;
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
                title: Center(
                    child: Icon(
                  Icons.check_box,
                  color: Colors.red.shade200,
                  size: 50,
                )),
                content: const Text(
                  "Do you want Exit?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                actions: [
                  InkWell(
                    child: Container(
                      height: 50,
                      width: 60,
                      color: Colors.red,
                      child: const Center(
                          child: Text(
                        "Yes",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                    ),
                    onTap: () {
                      if (Platform.isAndroid) {
                        SystemNavigator.pop();
                        exit(1);
                      } else {
                        exit(0);
                      }
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: 60,
                      color: Colors.red,
                      child: const Center(
                          child: Text(
                        "No",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            });
        if (value != null) {
          return Future.value(value);
        } else {
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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "₹ ${App_Text.Main_Balance}",
                                        style: const TextStyle(
                                            color: Colors.red,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const Row(
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
                            const Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                    height: 150,
                                    child: Image(
                                        image:
                                            AssetImage('images/pocket.png'))),
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
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Total Service used ",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 12),
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
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
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
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
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
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Recharge Payments",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
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
                                    height: 50,
                                    child: Image(
                                      image: AssetImage("images/mobile_th.png"),
                                    ),
                                  ),
                                  Text(
                                    "Prepaid",
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              if (content) {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const Prepaid_Form(),
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
                                    height: 50,
                                    child: Image(
                                      image: AssetImage("images/dth.png"),
                                    ),
                                  ),
                                  Text(
                                    "DTH",
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              if (content) {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const DTH_Recharge(),
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
                                Image(image: AssetImage("images/mobile.png")),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Postpaid",
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
                                      height: 50,
                                      child: Image(
                                        image: AssetImage("images/G-play.png"),
                                      ),
                                    ),
                                    Text(
                                      "G Pay",
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                if (content) {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.leftToRight,
                                      isIos: true,
                                      child: const Google_Pay(),
                                    ),
                                  );
                                }
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Bill Payments",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
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
                                    height: 50,
                                    child: Image(
                                      image: AssetImage(
                                          "images/ic_electricity.png"),
                                    ),
                                  ),
                                  Text(
                                    "Electricity",
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              if (content) {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const Electricity_Operator(),
                                  ),
                                );
                              }
                            },
                          ),
                          Container(
                            height: 100,
                            width: 90,
                            color: Colors.grey.shade50,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: Image(
                                    image: AssetImage("images/water.png"),
                                  ),
                                ),
                                Text(
                                  "Water",
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 120,
                            width: 90,
                            color: Colors.grey.shade50,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: Image(
                                    image: AssetImage("images/gasl.png"),
                                  ),
                                ),
                                Text(
                                  "Gas",
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 120,
                            width: 90,
                            color: Colors.grey.shade50,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: Image(
                                    image: AssetImage("images/Group .png"),
                                  ),
                                ),
                                Text(
                                  "Insurance",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Other Payments",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.grey.shade50,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: Image(
                                    image: AssetImage("images/e.png"),
                                  ),
                                ),
                                Text(
                                  "AEPS",
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            child: Container(
                              height: 100,
                              width: 90,
                              color: Colors.grey.shade50,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: Image(
                                      image: AssetImage("images/dmt.png"),
                                    ),
                                  ),
                                  Text(
                                    "DMT",
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              if (content) {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const DMT(),
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
                                    height: 50,
                                    child: Image(
                                      image: AssetImage("images/payout.png"),
                                    ),
                                  ),
                                  Text(
                                    "Payout",
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              if (content) {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const Payout(),
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
                                    height: 50,
                                    child: Image(
                                      image: AssetImage("images/dmt.png"),
                                    ),
                                  ),
                                  Text(
                                    "CSC",
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              if (content) {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const Csc(),
                                  ),
                                );
                              }
                            },
                          ),
                        ],
                      ),
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
                                    height: 50,
                                    child: Image(
                                      image: AssetImage("images/upi.png"),
                                    ),
                                  ),
                                  Text(
                                    "UPI",
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              if (content) {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const UPI(),
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
                                    height: 50,
                                    child: Image(
                                      image: AssetImage("images/card.png"),
                                    ),
                                  ),
                                  Text(
                                    "Card",
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              if (content) {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const Card_Page(),
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
                                SizedBox(
                                  height: 50,
                                  child: Image(
                                    image: AssetImage("images/landline.png"),
                                  ),
                                ),
                                Text(
                                  "Landline",
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
                                if(App_Text.connection !="none"){
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.leftToRight,
                                      isIos: true,

                                      child: const Fund_Request(),
                                    ),
                                  );



                                }
                              }
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (App_Text.connection == "none")
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
                            Icon(
                              Icons.error_outline,
                              color: Colors.red,
                              size: 70,
                            ),
                            Text(
                              "OOps!",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
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
              )),
        ),
      ),
    );
  }
}
