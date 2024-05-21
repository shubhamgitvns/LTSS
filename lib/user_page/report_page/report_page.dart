import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/ui_page/home_page/prepaid/prepaid_recharge.dart';
import 'package:recharge_setu/user_page/report_page/complaint_Report/complaint_report.dart';
import 'package:recharge_setu/user_page/report_page/dth_report/dth_report.dart';
import 'package:recharge_setu/user_page/report_page/fund_transfer_Report.dart';
import 'package:recharge_setu/user_page/report_page/income_wallet_summary.dart';
import 'package:recharge_setu/user_page/report_page/prepaid_report/prepaid_report.dart';
import 'package:recharge_setu/user_page/report_page/user_daybook_report.dart';
import 'package:recharge_setu/user_page/report_page/wallet_summury.dart';

import '../../ui_page/home_page/retailer_page.dart';
class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
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
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        isIos: true,
                        child: const prepaid_Report(),
                      ),
                    );
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
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        isIos: true,
                        child: const DTH_Report(),
                      ),
                    );
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
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        isIos: true,
                        child: const Complent_Report(),
                      ),
                    );
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
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        isIos: true,
                        child: const User_Daybook(),
                      ),
                    );

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
                    Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.leftToRight,
                      isIos: true,
                      child: const Wallet_Summary(),
                    ),
                  );

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
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        isIos: true,
                        child: const Fund_Transfer_Report(),
                      ),
                    );

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
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        isIos: true,
                        child: const Income_wallet(),
                      ),
                    );

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
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        isIos: true,
                        child: const Retailer(),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
