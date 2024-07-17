import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:recharge_setu/user_page/report_page/report_page.dart';
import 'dart:convert' as convert;
import 'dart:async';
import 'dart:ui';

import '../../Utilities.dart';
import '../../app_text.dart';
import '../../controller.dart';

class Fund_Transfer extends StatefulWidget {
  const Fund_Transfer({super.key});

  @override
  State<Fund_Transfer> createState() => _Fund_TransferState();
}

class _Fund_TransferState extends State<Fund_Transfer> {
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final CounterController counterController = Get.put(CounterController());

  String _connectionStatus = 'Unknown';
  String connection ="";
  final Connectivity _connectivity = Connectivity();
  bool content =true;
  bool loder =false;

  //*********Local var*****************//
  bool click_btn = false;
  String message = "";
  String status ="";

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
        backgroundColor: Colors.red,
        title: const Text("Fund Transfer",style: TextStyle(color: Colors.white),),
    leading: InkWell(child: const Icon(Icons.arrow_back,color: Colors.white,size: 35,),
    onTap: (){
    Navigator.pop(context);
    },
    ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                const Row(
                  children: [
                    Text("Maa Mobile Store",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Text("1234567891",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
                  ],
                ),
                const SizedBox(height: 20,),
                const Row(
                  children: [
                    Text("Amount",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),

                  ],
                ),
                const SizedBox(height: 5,),
                if(App_Text.connection!="none")
                Row(
                  children: [
                    Container(
                      color: Colors.white,
                      child: SizedBox(
                        width: 350,
                        child: TextField(
                          autofocus: true,
                          controller: App_Text.fund_tr_amount,
                          keyboardType: TextInputType.number,
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
                            hintText: "Amount",
                            hintStyle: const TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20,),
                const Row(
                  children: [
                    Text("Remark",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),

                  ],
                ),
                const SizedBox(height: 5,),
                if(App_Text.connection!="none")
                Row(
                  children: [
                    Container(
                      color: Colors.white,
                      child: SizedBox(
                        width: 350,
                        child: TextField(
                          autofocus: true,
                          controller:App_Text.fund_tr_remark,
                          keyboardType: TextInputType.text,
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

                const SizedBox(height: 20,),
                const Row(
                  children: [
                    Text("Pin Password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),

                  ],
                ),
                const SizedBox(height: 5,),
                if(App_Text.connection!="none")
                Row(
                  children: [
                    Container(
                      color: Colors.white,
                      child: SizedBox(
                        width: 350,
                        child: TextField(
                          autofocus: true,
                          controller: App_Text.fund_tr_Tpin,
                          keyboardType: TextInputType.number,
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
                            hintText: "Pin Password",
                            hintStyle: const TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 50,),
                const Row(
                  children: [
                    Text("Transferable Amount Is ₹ 2020.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
                  ],
                ),

                const SizedBox(height: 30,),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(10)
                        ),
                          child: const Center(child: Text("Cancel",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),))),
                      onTap: (){
                        if(App_Text.connection!="none"){
                          App_Text.fund_tr_remark.clear();
                          App_Text.fund_tr_amount.clear();
                          App_Text.fund_tr_Tpin.clear();
                          Navigator.pop(context);
                        }
                      },
                    ),
                    const SizedBox(width: 20,),
                    InkWell(
                      child: Container(
                        height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.red,
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Center(child: Text("Transfer",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)))),
                      onTap: () async {
                        setState(() {
                          click_btn = true;
                        });

                        if(App_Text.connection!="none" && loder==false
                            && App_Text.fund_tr_Tpin.text.isNotEmpty &&
                            App_Text.fund_tr_amount.text.isNotEmpty &&
                            App_Text.fund_tr_remark.text.isNotEmpty
                        ) {

                          setState(() {
                            loder=true;
                          });

                          //************* Fund transfer api call************//
                          try {
                            dynamic text =
                            await Utilities.Downloaddata("Wallet/FundTransfer");
                            setState(() {
                              status = ("${text["Status"]}");
                              message = ("${text["Message"]}");
                            });



                          }catch(e){
                            print(e);
                          }
                          //*********Wallet Api call*****************//
                          try {
                            dynamic text =
                            await Utilities.Downloaddata("/Wallet/GetBalance");
                            setState(() {
                              App_Text.Main_Balance = ("${text["MAIN"]}");
                              App_Text.Income_Balance = ("${text["INCOME"]}");
                            });

                           // App_Text.Main_Balance = App_Text.Main_Balance=App_Text.Income_Balance;

                            print("main balance");
                            print(App_Text.Main_Balance);
                            counterController.increment();
                          }catch(e){
                            print(e);
                          }
                          App_Text.fund_tr_amount.clear();
                          App_Text.fund_tr_remark.clear();
                          App_Text.fund_tr_Tpin.clear();
                          setState(() {
                            click_btn=false;
                          });

                          //******** after api calling the text data is clear**************//

                        }
                      },
                    ),
                  ],
                )

              ],
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

            if(status == "success")
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  height: 250,
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
                        width: 200,
                        child: Text(
                          message,
                          style: const TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      InkWell(
                        child: Container(
                          height: 50,
                          width: 60,
                          color: Colors.green,
                          child: const Center(child: Text("OK",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                        ),
                        onTap: (){
                          setState(() {
                            status="";
                            loder=false;
                            Navigator.pop(context);
                          });
                        },
                      )


                    ],
                  ),
                ),
              ),

            // if(status !="success")
            //   BackdropFilter(
            //     filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            //     child: Container(
            //       height: 200,
            //       width: 250,
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           border: Border.all(color: Colors.red),
            //           borderRadius: BorderRadius.circular(15)),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           const Icon(Icons.warning,color: Colors.red,size: 70,),
            //           SizedBox(
            //             width: 200,
            //             child: Text(
            //               message= "Please Check T-Pin",
            //               style: const TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),
            //             ),
            //           ),
            //           const SizedBox(height: 20,),
            //           InkWell(
            //             child: Container(
            //               height: 50,
            //               width: 60,
            //               color: Colors.green,
            //               child: const Center(child: Text("OK",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
            //             ),
            //             onTap: (){
            //               setState(() {
            //                 status="";
            //               });
            //             },
            //           )
            //
            //         ],
            //       ),
            //     ),
            //   ),
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

            if(click_btn==true && App_Text.fund_tr_amount.text.isEmpty)
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(15)),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline,color: Colors.red,size: 70,),
                      const Text("OOps!",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                      const SizedBox(
                        width: 180,
                        child: Text(
                          "Please Enter The Amount",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      InkWell(
                        child: Container(
                          height: 50,
                          width: 60,
                          color: Colors.green,
                          child: const Center(child: Text("OK",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                        ),
                        onTap: (){
                          setState(() {
                            click_btn = false;
                          });
                        },
                      )

                    ],
                  ),
                ),
              ),

            if(click_btn==true && App_Text.fund_tr_remark.text.isEmpty)
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(15)),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline,color: Colors.red,size: 70,),
                      const Text("OOps!",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                      const SizedBox(
                        width: 180,
                        child: Text(
                          "Please Enter The Remark",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      InkWell(
                        child: Container(
                          height: 50,
                          width: 60,
                          color: Colors.green,
                          child: const Center(child: Text("OK",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                        ),
                        onTap: (){
                          setState(() {
                            click_btn = false;
                          });
                        },
                      )

                    ],
                  ),
                ),
              ),

            if(click_btn==true && App_Text.fund_tr_Tpin.text.isEmpty)
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(15)),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline,color: Colors.red,size: 70,),
                      const Text("OOps!",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                      const SizedBox(
                        width: 180,
                        child: Text(
                          "Please Enter The T-Pin",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      InkWell(
                        child: Container(
                          height: 50,
                          width: 60,
                          color: Colors.green,
                          child: const Center(child: Text("OK",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                        ),
                        onTap: (){
                          setState(() {
                            click_btn = false;
                          });
                        },
                      )

                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
