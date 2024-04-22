import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/user_page/filter.dart';
import 'package:recharge_setu/user_page/support_page.dart';

class Wallet_Summary extends StatefulWidget {
  const Wallet_Summary({super.key});

  @override
  State<Wallet_Summary> createState() => _Wallet_SummaryState();
}

class _Wallet_SummaryState extends State<Wallet_Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: const Text("Wallet Summary",style: TextStyle(color: Colors.red),),
        actions:  [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              child: InkWell(child: Image(image: AssetImage("images/fil.png")),
                onTap: (){
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.topToBottom,
                      isIos: true,
                      child: const Filter(),
                    ),
                  );
                }

              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Center(
              child: Container(
                width: 350,
                decoration: Support_container.box,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Old Balance: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Debit: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Cl Balnce: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("TID: ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text(" S2404567803523172ghkfrnb  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("19 Apr 2024 7:30.01 AM"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("Description:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 40,),
                              Text("Paid for video-con D2H  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Account number. 304547r48r49  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Amount. 100.00  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20,),
            Center(
              child: Container(
                width: 350,
                decoration: Support_container.box,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Old Balance: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Debit: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Cl Balnce: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("TID: ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text(" S2404567803523172ghkfrnb  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("19 Apr 2024 7:30.01 AM"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("Description:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 40,),
                              Text("Paid for video-con D2H  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Account number. 304547r48r49  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Amount. 100.00  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20,),
            Center(
              child: Container(
                width: 350,
                decoration: Support_container.box,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Old Balance: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Debit: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Cl Balnce: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("TID: ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text(" S2404567803523172ghkfrnb  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("19 Apr 2024 7:30.01 AM"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("Description:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 40,),
                              Text("Paid for video-con D2H  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Account number. 304547r48r49  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Amount. 100.00  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20,),
            Center(
              child: Container(
                width: 350,
                decoration: Support_container.box,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Old Balance: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Debit: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Cl Balnce: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("TID: ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text(" S2404567803523172ghkfrnb  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("19 Apr 2024 7:30.01 AM"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("Description:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 40,),
                              Text("Paid for video-con D2H  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Account number. 304547r48r49  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Amount. 100.00  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20,),
            Center(
              child: Container(
                width: 350,
                decoration: Support_container.box,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Old Balance: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Debit: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Cl Balnce: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("TID: ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text(" S2404567803523172ghkfrnb  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("19 Apr 2024 7:30.01 AM"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("Description:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 40,),
                              Text("Paid for video-con D2H  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Account number. 304547r48r49  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Amount. 100.00  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20,),
            Center(
              child: Container(
                width: 350,
                decoration: Support_container.box,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Old Balance: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Debit: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Cl Balnce: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("TID: ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text(" S2404567803523172ghkfrnb  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("19 Apr 2024 7:30.01 AM"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("Description:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 40,),
                              Text("Paid for video-con D2H  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Account number. 304547r48r49  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Amount. 100.00  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20,),
            Center(
              child: Container(
                width: 350,
                decoration: Support_container.box,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Old Balance: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Debit: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Cl Balnce: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),),
                        Text("₹ 37126",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("TID: ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text(" S2404567803523172ghkfrnb  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text("19 Apr 2024 7:30.01 AM"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("Description:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 40,),
                              Text("Paid for video-con D2H  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Account number. 304547r48r49  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                              Text(" Amount. 100.00  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ),
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
