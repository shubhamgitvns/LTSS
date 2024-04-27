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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Electricity Operator",style: Text_Style.App,),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Center(
            child: Container(
              width: 350,
              height: 500,
              decoration: Support_container.box,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    const Row(
                      children: [
                        Text("Electricity Operator",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
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
                                hintText: "Electricity Operator",
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
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            isIos: true,
                            child: const Bill_Sample(),
                          ),
                        );
                      },
                    )


                  ],
                ),
              ),
            ),
          )
        ],

      ),
    );
  }
}
