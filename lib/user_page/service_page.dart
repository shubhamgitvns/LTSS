import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/Retailer/retailer_bottomnavigation.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/ui_page/bottom_navigation.dart';

class Service_Page extends StatefulWidget {
  const Service_Page({super.key});

  @override
  State<Service_Page> createState() => _Service_PageState();
}

class _Service_PageState extends State<Service_Page> {
  get value => null;

  String _connectionStatus = 'Unknown';
  String connection = "";
  bool content = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (App_Text.role == "DISTRIBUTOR") {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.leftToRight,
              isIos: true,
              child: BottomCollectionBoy(index: 0),
            ),
          );
        } else {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.leftToRight,
              isIos: true,
              child: Retailer_Bottomnavigation(index: 0),
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
            title: const Text(
              "Service",
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
                  Center(
                      child: Text(
                    "Comming Soon",
                    style: TextStyle(fontSize: 25, color: Colors.grey.shade400),
                  )),
                  // Text(App_Text.connection)
                ],
              ),
              if (App_Text.connection == "none")
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
    );
  }
}
