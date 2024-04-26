import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';

import '../prepaid/best_offer.dart';
import '../prepaid/view_plans.dart';

class Airtel_Recharge extends StatefulWidget {
  const Airtel_Recharge({super.key});

  @override
  State<Airtel_Recharge> createState() => _Airtel_RechargeState();
}

class _Airtel_RechargeState extends State<Airtel_Recharge> {
  bool recharge =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title:Text(
          "Airtel Digital Tv",
          style: Text_Style.App
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                color: Colors.red,
                                child: const Center(
                                    child: Text(
                                      "Recharge",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.red)),
                                // color: Colors.red,
                                child: const Center(
                                    child: Text(
                                      "History",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 100,
                            child: Image(image: AssetImage("images/airtel_dth.png"))),
                        const Row(
                          children: [
                            Text(
                              "Enter Phone Number",
                              style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              color: Colors.white,
                              child: const SizedBox(
                                width: 350,
                                child: TextField(
                                  autofocus: true,
                                  cursorColor: Colors.red,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: Colors.black, fontSize: 18),
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
                                      hintText: "Enter Number",
                                      hintStyle: TextStyle(color: Colors.red),
                                      prefixIcon: Icon(
                                        Icons.mobile_friendly,
                                        color: Colors.red,
                                      ),
                                      suffixIcon: Icon(Icons.contact_phone_rounded,color: Colors.red,)
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
                           SizedBox(
                             width:250,
                               child: Text("To get ID, SMS ID to 908362728 from your registration number",style: TextStyle(color: Colors.green),))
                         ],
                       ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Text(
                              "Enter Your Amount",
                              style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              color: Colors.white,
                              child: const SizedBox(
                                width: 350,
                                child: TextField(
                                  autofocus: true,
                                  cursorColor: Colors.red,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: Colors.black, fontSize: 18),
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
                                      hintText: "Enter Amount",
                                      hintStyle: TextStyle(color: Colors.red),
                                      prefixIcon: Icon(
                                        Icons.currency_rupee,
                                        color: Colors.red,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              child: Container(
                                width: 120,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.red),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                    child: Text(
                                      "View Plane",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const View_Plans(),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              child: Container(
                                width: 120,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.red),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                    child: Text(
                                      "DTH info",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const Best_Offer(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        const SizedBox(
                            width: 350,
                            child: Text(
                              "Note: kindly check once again all information before doing transactions.otherwise after transaction recharge amount will not recive",
                              style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                            )),
              
                        const SizedBox(
                          height: 50,
                        ),
                        InkWell(
                          child: Container(
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                                child: Text(
                                  "Recharge",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          onTap: () {
                            setState(() {
                               recharge = true;
                            });
                          },
                        ),
                      ],
                    ),
                    if (recharge)
              
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Container(
                            width: 350,
                            height: 480,
                            decoration: Support_container.box,
                            child:  Column(
                              children: [
                                const SizedBox(height: 30,),
                                const SizedBox(
                                  height:100,
                                    child: Image(image: AssetImage("images/airtel_dth.png"))),
                                const SizedBox(height: 10,),
                                const Text(
                                  "₹ 19",
                                  style:
                                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Airtel"),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("823456819",
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(
                                    width: 200,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Pin Code",
                                        hintStyle: TextStyle(color: Colors.red),
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      child: const Text(
                                        "Cancel",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      onTap: (){
                                        setState(() {
                                          recharge=false;
                                        });

                                      },
                                    ),
                                    const Text(
                                      "Continue",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(
                                    width: 250,
                                    child: Text(
                                      "Note: kindly check once again all information before doing transactions.",
                                      style: TextStyle(color: Colors.red),
                                    )),
                                const SizedBox(
                                    width: 250,
                                    child: Text(
                                      "otherwise after transaction recharge amount will not recive",
                                      style: TextStyle(color: Colors.red),
                                    )),
                              ],
                            )),
                      )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
