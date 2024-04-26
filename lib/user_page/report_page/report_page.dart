import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/ui_page/home_page/fundtransfer.dart';
import 'package:recharge_setu/user_page/report_page/fund_transfer_Report.dart';
import 'package:recharge_setu/user_page/report_page/income_wallet_summary.dart';
import 'package:recharge_setu/user_page/report_page/user_daybook_report.dart';
import 'package:recharge_setu/user_page/report_page/wallet_summury.dart';
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
        backgroundColor: Colors.red,
        title: const Text("Report",style: TextStyle(color: Colors.white,fontSize: 25),),
        actions: const [
          SizedBox(
            child:Image(
              image: AssetImage(
                  "images/white_bell.png"),
            ),  ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: SizedBox(
              child:Image(
                image: AssetImage(
                    "images/i_wht.png"),
              ),  ),
          ),
        ],
      ),
      body:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 20,),
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
                              "images/dth.png"),
                        ), ),

                      Text(
                        "DTH",
                      ),
                    ],
                  ),
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
                Container(
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
                )


              ],
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
