import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/photo_eploder.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:recharge_setu/ui_page/bottom_navigation.dart';
import 'package:recharge_setu/ui_page/home_page/home_page.dart';
import 'package:recharge_setu/user_page/report_page/report_page.dart';
import '../../Utilities.dart';
import '../../ui_page/home_page/card/card_beneficiary.dart';
class Fund_Request extends StatefulWidget {
  const Fund_Request({super.key});

  @override
  State<Fund_Request> createState() => _Fund_RequestState();
}

class _Fund_RequestState extends State<Fund_Request> {
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  String _connectionStatus = 'Unknown';
  String connection ="";
  String requst_message ="";
  final Connectivity _connectivity = Connectivity();
  bool content =true;
  bool message = false;
  bool loder = false;

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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Fund Request",style: Text_Style.App,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [

                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Payment Mode",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  if(App_Text.connection!="none")
                  Row(
                    children: [
                      Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: DropdownButtonExample(),
                          )),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Row(
                    children: [
                      Text(
                        "Amount",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  if(App_Text.connection!="none")
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        child: SizedBox(
                          width: 350,
                          child: TextField(
                            autofocus: true,
                            controller: App_Text.amount,
                            cursorColor: Colors.red,
                            style: const TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  //width: 1.5,
                                ),
                              ),

                              //********Focus border like hover******************8
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.red)),
                              hintText: "Enter Amount",
                              hintStyle: const TextStyle(color: Colors.red),
                            ),
                          ),
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
                        "Bank",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  if(App_Text.connection!="none")
                  Row(
                    children: [
                      Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: DropdownButton_B(),
                          )),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Row(
                    children: [
                      Text(
                        "Reference Number",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  if(App_Text.connection!="none")
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        child: SizedBox(
                          width: 350,
                          child: TextField(
                            controller: App_Text.ref_number,
                            keyboardType: TextInputType.number,
                            autofocus: true,
                            cursorColor: Colors.red,
                            style: const TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  //width: 1.5,
                                ),
                              ),

                              //********Focus border like hover******************8
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.red)),
                              hintText: "Reference Number",
                              hintStyle: const TextStyle(color: Colors.red),
                            ),
                          ),
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
                        "Remark",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  if(App_Text.connection!="none")
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        child: SizedBox(
                          width: 350,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            autofocus: true,
                            controller: App_Text.remark,
                            cursorColor: Colors.red,
                            style: const TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  //width: 1.5,
                                ),
                              ),

                              //********Focus border like hover******************8
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.red)),
                              hintText: "Remark",
                              hintStyle: const TextStyle(color: Colors.red),
                            ),
                          ),
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
                        "Account Holder",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  if(App_Text.connection!="none")
                    Row(
                      children: [
                        Container(
                          color: Colors.white,
                          child: SizedBox(
                            width: 350,
                            child: TextField(
                              controller: App_Text.account_holder,
                              keyboardType: TextInputType.text,
                              autofocus: true,
                              cursorColor: Colors.red,
                              style: const TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    //width: 1.5,
                                  ),
                                ),

                                //********Focus border like hover******************8
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(color: Colors.red)),
                                hintText: "Account Holder",
                                hintStyle: const TextStyle(color: Colors.red),
                              ),
                            ),
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
                        "Photo Up-lode",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    color: Colors.white,
                    child:MyHomePage(title: 'Image picker',),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                                child: Text(
                                  "Submit",
                                  style: TextStyle(color: Colors.white, fontSize: 20),

                                ))),
                        onTap: () async {
                          setState(() {
                            loder = true;
                          });
                          print(App_Text.Payment_mode);
                          print(App_Text.amount.text);
                          print(App_Text.bank);
                          print(App_Text.ref_number.text);
                          print(App_Text.remark.text);
                          print(App_Text.account_holder.text);

                          try {
                            dynamic text =
                                await Utilities.Downloaddata("/Wallet/FundRequest");
                            print("${text["message"]}");
                            setState(() {
                              requst_message = ("${text["message"]}");
                              message =true;
                              loder = false;
                              App_Text.amount.clear();
                              App_Text.ref_number.clear();
                              App_Text.account_holder.clear();
                              App_Text.remark.clear();
                            });
                          } catch (ex) {
                            print(ex);
                          }
                        },
                      )
                    ],
                  )
                ],
              ),
              if(message==true)
              Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.check,color: Colors.green,size: 70,),
                    SizedBox(
                      width: 180,
                        child: Text(requst_message ,style: const TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),)),
                    const SizedBox(height: 20,),
                    Container(
                      color: Colors.green,
                      height: 35,
                      width: 60,
                      child:  InkWell(
                          child: const Center(
                              child: Text(
                                "Ok",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        onTap: (){
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              isIos: true,
                              child: BottomCollectionBoy(index: 0),
                            ),
                          );
                            setState(() {
                              message = false;
                              loder = false;
                            });
                        },
                      ),

                    )

                  ],
                ),
              ),
              if(loder == true)
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
          ),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list_a.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Padding(
        padding: EdgeInsets.only(left: 150),
        child: Icon(
          Icons.arrow_drop_down,
          color: Colors.red,
          size: 30,
        ),
      ),
      elevation: 16,
      style: const TextStyle(
          color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
      underline: Container(
        height: 0,
        color: Colors.white,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          App_Text.Payment_mode = value;

        });
      },
      items: list_a.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownButton_B extends StatefulWidget {
  const DropdownButton_B({super.key});

  @override
  State<DropdownButton_B> createState() => _DropdownButton_BState();
}

class _DropdownButton_BState extends State<DropdownButton_B> {
  String dropdownValue = list_b.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Padding(
        padding: EdgeInsets.only(left: 210),
        child: Icon(
          Icons.arrow_drop_down,
          color: Colors.red,
          size: 30,
        ),
      ),
      elevation: 16,
      style: const TextStyle(
          color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
      underline: Container(
        height: 0,
        color: Colors.white,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          App_Text.bank = value;

        });
      },
      items: list_b.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
