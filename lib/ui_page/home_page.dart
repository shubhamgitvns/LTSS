import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red.shade100,
          title: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'LTS', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red.shade600)),
                const TextSpan(text: ' Solutions',style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
          actions: const [
            SizedBox(
                child:Image(
                  image: AssetImage(
                      "images/red_bell.png"),
                ),  ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: SizedBox(
                  child:Image(
                    image: AssetImage(
                        "images/i.png"),
                  ),  ),
            ),
          ],
        ),
        body:  SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
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
                           SizedBox(height: 10,),
                           Row(
                             children: [
                               Text("₹ 350.50",style: TextStyle(color: Colors.red,fontSize: 35,fontWeight: FontWeight.bold),),
                             ],
                           ),
                            Row(
                             children: [
                               Text("Available in account",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                             ],
                           )
                         ],
                       ),
                     ),
                  Column(
                    children: [
                      SizedBox(height: 20,),
                      SizedBox(
                          height: 150,
                          child: Image(image: AssetImage('images/pocket.png'))),
                      // Text("Earning",style: TextStyle(color: Colors.red),)
                    ],
                  )
                   ],
                 ),
               ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Container(
                     height: 90,
                     width: 120,
                     decoration: BoxDecoration(
                       color: Colors.pink.shade100,
                       borderRadius: BorderRadius.circular(15)
                     ),
                     
                     child: const Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           "₹1000.00",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                         ),
                         Text("Total Service used ",style: TextStyle(color: Colors.red,fontSize: 12),)
                       ],
                     ),
                   ),
                    Container(
                      height: 90,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(15)
                      ),
      
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "₹359.60",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                          ),
                          Text("Cashback",style: TextStyle(color: Colors.green),)
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.pink.shade50,
                          borderRadius: BorderRadius.circular(15)
                      ),
      
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "₹359.60",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                          ),
                          Text("Stock Report",style: TextStyle(color: Colors.green),)
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                const Row(
                  children: [
                    Text("Recharge Payments",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                  ],
                ),
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
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 90,
                      color: Colors.grey.shade50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:32,
                              child: Image.network("https://toppng.com/uploads/preview/ive-us-a-call-1-red-mobile-icon-115630449556td2h4qoum.png")),
                          const SizedBox(height: 10,),
                          const Text(
                            "Postpaid",
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
                            "Landline",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const Row(
                  children: [
                    Text("Bill Payments",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                  ],
                ),
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
                                  "images/ic_electricity.png"),
                            ), ),

                          Text(
                            "Electricity",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 90,
                      color: Colors.grey.shade50,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height:50,
                            child:Image(
                              image: AssetImage(
                                  "images/water.png"),
                            ), ),

                          Text(
                            "Water",
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
                                  "images/gasl.png"),
                            ), ),

                          Text(
                            "Gas",
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
                                  "images/Group .png"),
                            ), ),

                          Text(
                            "Insurance",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                const Row(
                  children: [
                    Text("Other Payments",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                  ],
                ),
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
                                  "images/e.png"),
                            ), ),

                          Text(
                            "AEPS",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 90,
                      color: Colors.grey.shade50,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height:50,
                            child:Image(
                              image: AssetImage(
                                  "images/dmt.png"),
                            ), ),

                          Text(
                            "DMT",
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
                                  "images/payout.png"),
                            ), ),

                          Text(
                            "Payout",
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
                                  "images/upi.png"),
                            ), ),

                          Text(
                            "UPI",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Row(
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
                                  "images/card.png"),
                            ), ),

                          Text(
                            "Card",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),







              ],
            ),
          ),
        ),
      ),
    );
  }
}
