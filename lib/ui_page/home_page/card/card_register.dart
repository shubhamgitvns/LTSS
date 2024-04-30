import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../app_text.dart';
import 'card_otp_veryfication.dart';

class Card_Register extends StatefulWidget {
  const Card_Register({super.key});

  @override
  State<Card_Register> createState() => _Card_RegisterState();
}

class _Card_RegisterState extends State<Card_Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Register",style: Text_Style.App,),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Image(image: AssetImage("images/i_wht.png")),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text("Mobile Number",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 5,),
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
                          hintText: "Enter Mobile Number",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),


              const Row(
                children: [
                  Text("Sender Name",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    child: const SizedBox(
                      width: 350,
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
                          hintText: "Enter Sender Name",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),

              const Row(
                children: [
                  Text("Last Name",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    child: const SizedBox(
                      width: 350,
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
                          hintText: "Enter Last Name",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),

              const Row(
                children: [
                  Text("Date of Birth",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 5,),
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
                            hintText: "DD/MM/YYY",
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(Icons.calendar_month,color: Colors.red,)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),

              const Row(
                children: [
                  Text("Address",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    child: const SizedBox(
                      width: 350,
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
                          hintText: "Enter Address",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),

              const Row(
                children: [
                  Text("Area",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    child: const SizedBox(
                      width: 350,
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
                          hintText: "Enter Area",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),

              const Row(
                children: [
                  Text("Pin Code",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    child: const SizedBox(
                      width: 350,
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
                          hintText: "Enter Pin Code",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),

              InkWell(
                child: Container(
                  height: 50,
                  width: 350,
                  color: Colors.red,
                  child: const Center(child: Text("Create",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      isIos: true,
                      child: const Card_OTP_Veryfication(),
                    ),
                  );
                },
              )

            ],
          ),
        ),
      ),
    );
  }
}