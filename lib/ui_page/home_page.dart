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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Recharge', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red.shade600)),
                          const TextSpan(text: ' Setu',style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                    Container(
                      height: 30,width: 120,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      
                      child: const Center(child: Text("Invite & Earn",style: TextStyle(color: Colors.white),)),
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
                        Text("Mr, Sunil Good Morning",style: TextStyle(fontSize: 20,color: Colors.grey.shade600),),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Text("Recharge setu app",style: TextStyle(color: Colors.grey.shade600),),
                        ),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(right: 150),
                             child: Text("₹ 350.50",style: TextStyle(color: Colors.grey.shade600),),
      
                           ),
      
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Best Offer",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                    Text("View all",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                  ],
                ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 120,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height:50,
                              child: Image.network("https://lh3.googleusercontent.com/lT-Hq8R0vSVlBqglFSemkF-mjcERBpMv1nUbRnC36G-dVtxO-JvztUC8DTmpaSe7hMjj")),
                          
                          const Text(
                            "₹399/-",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          const Text("6.0 %",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: 120,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://cdn.iconscout.com/icon/free/png-256/free-jio-2363161-1970123.png")),
      
                          const Text(
                            "₹249/-",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          const Text("5.0 %",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: 120,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://takepng.com/files/preview/960x960/11669525358gg2qjcn3ydw4kww39imkqmi4r0gcrgefa7ncc51zs5jjrrugu1jnavof7uhldgk6grrbtyiszoietjjosnfqgcqn1m0iwvbiqocc.png")),
      
                          const Text(
                            "₹245/-",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          const Text("5.0 %",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Utility",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                    Text("View all",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 120,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfd3BNVJIiMVyFRCPmDwbKcFYj6akJEaPRkR2pIHbhD3D2heY8z3jYb22kWgNQu6mEWzw&usqp=CAU")),
      
                          const Text(
                            "Electricity",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          const Text("3.20 %",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: 120,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi0Il4EZK1o2-r2HsDHqIIUi4zSgUAfcOG9YzRjOSl8D6qo3j5lb7KfUd_uVwMT-AWEYE&usqp=CAU")),
      
                          const Text(
                            "Water",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          const Text("2.21 %",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: 120,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://static.vecteezy.com/system/resources/previews/021/054/774/non_2x/lpg-flat-design-flammable-gas-tank-icon-propane-butane-methane-gas-tank-gas-cylinder-bottle-icon-flat-illustration-of-gas-cylinder-bottle-icon-for-web-design-free-vector.jpg")),
      
                          const Text(
                            "Gas",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          const Text("5.0 %",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Operator Stocks",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                    Text("View all",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.pink.shade50,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://lh3.googleusercontent.com/lT-Hq8R0vSVlBqglFSemkF-mjcERBpMv1nUbRnC36G-dVtxO-JvztUC8DTmpaSe7hMjj")),
                      
                          const Text(
                            "₹399/-",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          const Text("6.0 %",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.pink.shade50,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://cdn.iconscout.com/icon/free/png-256/free-jio-2363161-1970123.png")),
      
                          const Text(
                            "₹249/-",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          const Text("5.0 %",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.pink.shade50,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:50,
                              child: Image.network("https://takepng.com/files/preview/960x960/11669525358gg2qjcn3ydw4kww39imkqmi4r0gcrgefa7ncc51zs5jjrrugu1jnavof7uhldgk6grrbtyiszoietjjosnfqgcqn1m0iwvbiqocc.png")),
      
                          const Text(
                            "₹245/-",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          const Text("5.0 %",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      // height: 100,
                        width: 370,
                        child: Image.network("https://ontimepay.in/NewContent/Assets/images/slider/banner-3.jpg"))
                  ],
                ),
                SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("DTH Stocks",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                    Text("View all",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                  ],
                ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 120,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // height: 50,
                            // width: 100,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.orange.shade100,
                                    offset: const Offset(
                                      2.0,
                                      2.0,
                                    ),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.orange.shade100,
                                    offset: const Offset(
                                      2.0,
                                      2.0,
                                    ),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ), //BoxShadow
                                ],
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage("https://dreamdth.com/wp-content/uploads/2021/01/Airtel-Digital-TV-AMP-Logo.jpg"),
                            ),
                          ),
                          const Text(
                            "Video con",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          const Text("3.0 %",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: 120,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // height: 50,
                            // width: 100,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.orange.shade100,
                                    offset: const Offset(
                                      2.0,
                                      2.0,
                                    ),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.orange.shade100,
                                    offset: const Offset(
                                      2.0,
                                      2.0,
                                    ),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ), //BoxShadow
                                ],
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage("https://onlinedth.co.in/wp-content/uploads/2020/07/New-TataPlay-productSD-1.jpg"),
                            ),
                          ),
                          const Text(
                            "Video con",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          const Text("3.0 %",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: 120,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // height: 50,
                            // width: 100,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.orange.shade100,
                                    offset: const Offset(
                                      2.0,
                                      2.0,
                                    ),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.orange.shade100,
                                    offset: const Offset(
                                      2.0,
                                      2.0,
                                    ),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ), //BoxShadow
                                ],
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage("https://www.d2h.com/Content/images/hd-set-top-box/d2h-dist-img.png"),
                            ),
                          ),
                          const Text(
                            "Video con",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          const Text("3.0 %",style: TextStyle(color: Colors.grey,fontSize: 12),)
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
