
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/jsonclass.dart';
import 'fundtransfer.dart';

class Retailer extends StatefulWidget {
  const Retailer({super.key});

  @override
  State<Retailer> createState() => _RetailerState();
}

class _RetailerState extends State<Retailer> {
  bool light = true;
  bool text = true;
  static List data=[Person( name: 'Dhoni', number: '101'), Person ( name: 'Kohli', number: '201'), Person( name: 'Moni', number: '101')];
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
      body: GridView.count(
        childAspectRatio: 1/.4,
        crossAxisCount: 1,
        children: List.generate(3, (index) {
          return  Column(
            children: [
              const SizedBox(height: 20,),
              Container(
                width: 350,
                height: 110,
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                               Text(
                                data[index].name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                               Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(data[index].number,
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 40),
                                child: Text(" ₹ 1054",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold)),
                              ),
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
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.leftToRight,
                                      isIos: true,
                                      child: const Fund_Transfer(),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        const Column(
                          children: [
                            Text("Active")
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}


