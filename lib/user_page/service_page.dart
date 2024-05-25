import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/Retailer/retailer_bottomnavigation.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/ui_page/bottom_navigation.dart';
import 'package:recharge_setu/ui_page/home_page/home_page.dart';

class Service_Page extends StatefulWidget {
  const Service_Page({super.key});

  @override
  State<Service_Page> createState() => _Service_PageState();
}

class _Service_PageState extends State<Service_Page> {
  get value => null;

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Comming Soon",style: TextStyle(fontSize: 25,color: Colors.grey.shade400),))
          ],
        ),
      ),
    );
  }
}
