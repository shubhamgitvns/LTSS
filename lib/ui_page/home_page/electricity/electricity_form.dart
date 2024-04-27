import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/ui_page/home_page/electricity/bill_sample.dart';

import '../prepaid/prepaid.dart';

class Electricity_form extends StatefulWidget {
  const Electricity_form({super.key});

  @override
  State<Electricity_form> createState() => _Electricity_formState();
}

class _Electricity_formState extends State<Electricity_form> {
  bool recharge=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Electricity Operator",style: Text_Style.App,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 20,),

                    Center(
                      child: Container(
                        width: 350,
                        // height: 500,
                        decoration: Support_container.box,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              const SizedBox(height: 20,),
                              const Image(image: AssetImage("images/adani.png")),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Adani Electricity",style: Text_Style.Red,)
                                ],
                              ),
                              const SizedBox(height: 20,),
                              const Row(
                                children: [
                                  Text("Enter Account Number",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                children: [
                                  Container(
                                    color: Colors.white,
                                    child: const SizedBox(
                                      width: 300,
                                      child: TextField(
                                        autofocus: true,
                                        cursorColor: Colors.red,
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(
                                            color: Colors.black,fontSize: 18),
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
                                          hintText: "Account Number",
                                          hintStyle: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              const Row(
                                children: [
                                  Text("State",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                children: [
                                  Container(
                                    color: Colors.white,
                                    child: const SizedBox(
                                      width: 300,
                                      child: TextField(
                                        autofocus: true,
                                        cursorColor: Colors.red,
                                        keyboardType: TextInputType.text,
                                        style: TextStyle(
                                            color: Colors.black,fontSize: 18),
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
                                          hintText: "State",
                                          hintStyle: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),




                              const SizedBox(height: 50,),

                              InkWell(
                                child: Container(
                                  width: 300,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: const Center(child: Text("View Bill",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                                ),
                                onTap: (){
                                  // Navigator.push(
                                  //   context,
                                  //   PageTransition(
                                  //     type: PageTransitionType.leftToRight,
                                  //     isIos: true,
                                  //     child: const Bill_Sample(),
                                  //   ),
                                  // );
                                },
                              ),



                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20,),
                    Container(
                      width: 350,
                      decoration: Support_container.box,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Electricity Bill details",style: Text_Style.Red,)
                            ],
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                            children: [
                              SizedBox(
                                  width:150,
                                  child: Text("Customer Name",style: TextStyle(color: Colors.grey),)),
                              SizedBox(
                                  width: 150,
                                  child: Text(":Manisha Row")),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                            children: [
                              SizedBox(
                                  width:150,
                                  child: Text("Bill NUmber",style: TextStyle(color: Colors.grey),)),
                              SizedBox(
                                  width: 150,
                                  child: Text(":08754546789900")),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                            children: [
                              SizedBox(
                                  width:150,
                                  child: Text("Bill Due Date",style: TextStyle(color: Colors.grey),)),
                              SizedBox(
                                  width: 150,
                                  child: Text(":13 May 2024")),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                            children: [
                              SizedBox(
                                  width:150,
                                  child: Text("Paybal Amount",style: TextStyle(color: Colors.grey),)),
                              SizedBox(
                                  width: 150,
                                  child: Text(":1238",style: TextStyle(color: Colors.red),)),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
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
                                  "On Line",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   PageTransition(
                            //     type: PageTransitionType.leftToRight,
                            //     isIos: true,
                            //     child: const View_Plans(),
                            //   ),
                            // );
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
                                  "Off Line",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   PageTransition(
                            //     type: PageTransitionType.leftToRight,
                            //     isIos: true,
                            //     child: const Best_Offer(),
                            //   ),
                            // );
                          },
                        ),
                      ],
                    ),

                    const SizedBox(height: 50,),

                    InkWell(
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(child: Text("Bill Payment",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                      onTap: (){
                        setState(() {
                          recharge=true;
                        });

                      },
                    ),

                  ],

                ),
                if (recharge)

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        width: 350,
                        height: 480,
                        decoration: Support_container.box,
                        child:  Column(
                          children: [
                            const SizedBox(height: 30,),
                            const SizedBox(
                                height:100,
                                child: Image(image: AssetImage("images/adani.png"))),
                            const SizedBox(height: 10,),
                            const Text(
                              "₹ 19",
                              style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("Adani Electricity"),
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
              ],
            )
          ],
        )
      ),
    );
  }
}
