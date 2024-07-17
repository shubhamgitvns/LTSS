import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/Retailer/retailer_bottomnavigation.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/user_page/current_password.dart';
import 'package:recharge_setu/user_page/current_securitypin.dart';
import 'package:recharge_setu/user_page/user_detail.dart';
import 'package:recharge_setu/user_verification/login_page.dart';
import '../Utilities.dart';
import '../jsonclass.dart';
import '../localdatabase.dart';
import '../ui_page/bottom_navigation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  get value => null;
  String name = "", role = "";
  bool content = true;
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  String _connectionStatus = 'Unknown';
  String connection ="";
  final Connectivity _connectivity = Connectivity();
  // bool content =true;
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
        var list = await DatabaseHandler.jsons();
        List<Json> lst = list;
        App_Text.role = list[0].role;
        App_Text.name = list[0].username;

        if (App_Text.role == "DISTRIBUTOR") {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.rightToLeft,
              isIos: true,
              child: BottomCollectionBoy(index: 2),
            ),
          );
        } else {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.leftToRight,
              isIos: true,
              child: Retailer_Bottomnavigation(index: 3),
            ),
          );
        }
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red,
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          actions: const [
            Image(
              image: AssetImage("images/white_bell.png"),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Image(
                image: AssetImage("images/i_wht.png"),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    if (App_Text.dbstatus == "success")
                      Center(
                        child: Container(
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 5.0,
                                spreadRadius: 1.0,
                              ), //BoxShadow
                              const BoxShadow(
                                color: Colors.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Column(
                                      children: [
                                        //************ User image ********************************//
                                        SizedBox(
                                            height: 80,
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: SizedBox(
                                                  height: 150,
                                                  child: Image(
                                                      image: AssetImage(
                                                          "images/avtar.png"))),
                                            )),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          //************ User name ********************************//
                                          Row(
                                            children: [
                                              //       if(App_Text.distributer_role == "DISTRIBUTER")
                                              SizedBox(
                                                width: 130,
                                                child: Text(
                                                  App_Text.name,
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              //************ view button ********************************//
                                              const SizedBox(
                                                width: 50,
                                              ),
                                              InkWell(
                                                child: Container(
                                                    height: 25,
                                                    width: 50,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.red.shade100,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        border: Border.all(
                                                            color: Colors.red)),
                                                    child: const Text(
                                                      "View",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.red),
                                                      textAlign:
                                                          TextAlign.center,
                                                    )),
                                                onTap: () async {
                                                  if (App_Text
                                                      .adharno.isEmpty && App_Text.connection!='none' ) {
                                                    setState(() {
                                                      content = false;
                                                    });
                                                    try {
                                                      dynamic User_Detail =
                                                          await Utilities
                                                              .Downloaddata(
                                                                  "/Users/Profiles");
                                                      App_Text.name =
                                                          ("${User_Detail["FullName"]}");
                                                      App_Text.email =
                                                          ("${User_Detail["Email"]}");
                                                      App_Text.address =
                                                          ("${User_Detail["Address"]}");
                                                      App_Text.adharno =
                                                          ("${User_Detail["AadhaarNumber"]}");
                                                      App_Text.pincode =
                                                          ("${User_Detail["PINCode"]}");
                                                      App_Text.pan =
                                                          ("${User_Detail["PAN"]}");

                                                      App_Text.shopname =
                                                          ("${User_Detail["ShopName"]}");
                                                      App_Text.shopaddress =
                                                          ("${User_Detail["ShopAddress"]}");
                                                      App_Text.Acno =
                                                          ("${User_Detail["AccountNumber"]}");
                                                      App_Text.bankname =
                                                          ("${User_Detail["BankName"]}");
                                                      App_Text.branchname =
                                                          ("${User_Detail["BranchName"]}");
                                                      App_Text.IFSC =
                                                          ("${User_Detail["IFSC"]}");
                                                      setState(() {
                                                        print(App_Text.address);
                                                      });
                                                    } catch (ex) {
                                                      print(ex);
                                                    }
                                                  }
                                                  if(App_Text.connection!='none') {
                                                    Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .bottomToTop,
                                                        isIos: true,
                                                        child:
                                                        const User_Detail(),
                                                      ),
                                                    );
                                                  }
                                                  setState(() {
                                                    content = true;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 120),
                                                child: Text(
                                                  App_Text.role,
                                                  style: const TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                const Divider(),
                                 Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        const Text(
                                          "Income Wallet",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "₹  ${App_Text.Income_Balance}",
                                          style: const TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    const Column(
                                      children: [
                                        SizedBox(
                                            height: 80,
                                            child: Image(
                                                image: AssetImage(
                                                    "images/pocket.png")))
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      // height: 500,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: const Offset(
                              2.0,
                              2.0,
                            ),
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "Settings",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade50,
                                      image: const DecorationImage(
                                          image: AssetImage("images/faqs.png"),
                                          fit: BoxFit.scaleDown)),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                const Text(
                                  'FAQS',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 15),
                                ),
                                const SizedBox(
                                  width: 190,
                                ),
                                const Text(
                                  ">",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade50,
                                      image: const DecorationImage(
                                          image:
                                              AssetImage("images/privacy.png"),
                                          fit: BoxFit.scaleDown)),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                const Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 15),
                                ),
                                const SizedBox(
                                  width: 130,
                                ),
                                const Text(
                                  ">",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade50,
                                      image: const DecorationImage(
                                          image: AssetImage("images/terms.png"),
                                          fit: BoxFit.scaleDown)),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                const Text(
                                  'Terms & Conditions',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 15),
                                ),
                                const SizedBox(
                                  width: 90,
                                ),
                                const Text(
                                  ">",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade50,
                                      image: const DecorationImage(
                                          image: AssetImage("images/rate.png"),
                                          fit: BoxFit.scaleDown)),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                const Text(
                                  'Rate App',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 15),
                                ),
                                const SizedBox(
                                  width: 165,
                                ),
                                const Text(
                                  ">",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red),
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.red.shade50,
                                        image: const DecorationImage(
                                            image:
                                                AssetImage("images/lock.png"),
                                            fit: BoxFit.scaleDown)),
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  const Text(
                                    'Change Password',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 15),
                                  ),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  const Text(
                                    ">",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              onTap: () {
                                if (content == true && App_Text.connection!='none') {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.topToBottom,
                                      isIos: true,
                                      child: const Current_password(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red),
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.red.shade50,
                                        image: const DecorationImage(
                                            image:
                                                AssetImage("images/logout.png"),
                                            fit: BoxFit.scaleDown)),
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  const Text(
                                    'Logout',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 15),
                                  ),
                                  const SizedBox(
                                    width: 180,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Text(
                                      ">",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              if (content == true && App_Text.connection!='none') {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 300,
                                      color: Colors.red.shade100,
                                      child: Center(
                                        child: Column(
                                          // mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            const Center(
                                                child: Text(
                                              "Log Out",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25),
                                            )),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            const Center(
                                                child: Text(
                                              " Do you really want to log out ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            )),
                                            const SizedBox(
                                              height: 50,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                InkWell(
                                                  child: Container(
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.red)),
                                                    child: const Center(
                                                        child: Text(
                                                      "No",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.red),
                                                    )),
                                                  ),
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                InkWell(
                                                  child: Container(
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        border: Border.all(
                                                            color: Colors.red)),
                                                    child: const Center(
                                                        child: Text(
                                                      "Yes",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    )),
                                                  ),
                                                  onTap: () {

                                                    setState(() {
                                                      App_Text.data.isEmpty;
                                                      App_Text.adharno = "";
                                                    });

                                                    DatabaseHandler.deleteJson(
                                                        int.parse(App_Text.id
                                                            .toString()));
                                                    print(App_Text.id);
                                                    print("Del");
                                                    Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .leftToRight,
                                                        isIos: true,
                                                        child: const Login(),
                                                      ),
                                                    );
                                                    // if(Platform.isAndroid){
                                                    //   SystemNavigator.pop();
                                                    // }else{
                                                    //   exit(0);
                                                    // }
                                                  },
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red),
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.red.shade50,
                                        image: const DecorationImage(
                                            image: AssetImage("images/key.png"),
                                            fit: BoxFit.scaleDown)),
                                  ),
                                  const Text(
                                    'Change Security Access Pin',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 15),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Text(
                                      ">",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              if (content == true && App_Text.connection!="none") {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    isIos: true,
                                    child: const Current_Security_Pin(),
                                  ),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                if (content == false)
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red.shade100)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LoadingAnimationWidget.inkDrop(
                              color: Colors.red,
                              size: 40,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Loading",
                              style: TextStyle(
                                  color: Colors.red.shade200,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
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
            )),
      ),
    );
  }
}
