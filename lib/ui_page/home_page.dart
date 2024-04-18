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
        body:  SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'LTS', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red.shade600)),
                          const TextSpan(text: ' Solutions',style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                        child: Image.network("https://st2.depositphotos.com/25080024/50607/v/600/depositphotos_506071894-stock-video-animated-bell-rings-red-line.jpg"))
                  ],
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     children: [
                       const Text("sat, 11 Jun",style: TextStyle(color: Colors.red,fontSize: 20,),),
                        Text("Name",style: TextStyle(fontSize: 20,color: Colors.grey.shade600),),
                        const SizedBox(height: 10,),
                       const SizedBox(
                         height: 50,
                         child: Image(
                           image: AssetImage(
                               "images/lts.png"),
                         ),
                       ),
                       const SizedBox(height: 10,),
                       Row(
                         children: [
                           Text("₹ 350.50",style: TextStyle(color: Colors.grey.shade600),),
      
                         ],
                       ),
                     ],
                   ),
                Column(
                  children: [
                    SizedBox(
                      height: 200,
                        width: 150,
                        child: Image.network("https://i.pinimg.com/736x/b5/4f/e4/b54fe4b9bbc2bf46eb12e9e9244b62b6.jpg")),
                  ],
                )
                 ],
               ),
                const SizedBox(height: 10,),
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
                const SizedBox(height: 10,),




                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150,
                      width: 120,
                      color: Colors.pink.shade50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: SizedBox(
                                height:50,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfd3BNVJIiMVyFRCPmDwbKcFYj6akJEaPRkR2pIHbhD3D2heY8z3jYb22kWgNQu6mEWzw&usqp=CAU")),
                          ),

                          const Text(
                            "Recharge",
                          ),
                          const Text("Report")
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 120,
                      color: Colors.pink.shade50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfd3BNVJIiMVyFRCPmDwbKcFYj6akJEaPRkR2pIHbhD3D2heY8z3jYb22kWgNQu6mEWzw&usqp=CAU")),

                          const Text(
                            "DMT",
                          ),
                          const Text("Report")
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 120,
                      color: Colors.pink.shade50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfd3BNVJIiMVyFRCPmDwbKcFYj6akJEaPRkR2pIHbhD3D2heY8z3jYb22kWgNQu6mEWzw&usqp=CAU")),

                          const Text(
                            "Ledger",
                          ),
                          const Text("Report")
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150,
                      width: 120,
                      color: Colors.pink.shade50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfd3BNVJIiMVyFRCPmDwbKcFYj6akJEaPRkR2pIHbhD3D2heY8z3jYb22kWgNQu6mEWzw&usqp=CAU")),

                          const Text(
                            "AEPS",
                          ),
                          const Text("Report")
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 120,
                      color: Colors.pink.shade50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfd3BNVJIiMVyFRCPmDwbKcFYj6akJEaPRkR2pIHbhD3D2heY8z3jYb22kWgNQu6mEWzw&usqp=CAU")),

                          const Text(
                            "Complete",
                          ),
                          const Text("Report")
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 120,
                      color: Colors.pink.shade50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfd3BNVJIiMVyFRCPmDwbKcFYj6akJEaPRkR2pIHbhD3D2heY8z3jYb22kWgNQu6mEWzw&usqp=CAU")),

                          const Text(
                            "Payment",
                          ),
                          const Text("Report")
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
