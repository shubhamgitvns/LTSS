import 'package:flutter/material.dart';

import '../../../app_text.dart';

const List<String> list_a = <String>['NORMAL', 'COMMERCIAL'];
const List<String> list_b = <String>['RUPAY', 'Visa', 'Master'];

class Card_Beneficiary extends StatefulWidget {
  const Card_Beneficiary({super.key});

  @override
  State<Card_Beneficiary> createState() => _Card_BeneficiaryState();
}

class _Card_BeneficiaryState extends State<Card_Beneficiary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Add Card",style: Text_Style.App,),
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
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Text("Card Number",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
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
                          hintText: "Enter Card Number",
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
                  Text("Card Type",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    child: const SizedBox(
                        width: 350,
                        child:DropdownButton_A()
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),

              const Row(
                children: [
                  Text("Pay Type",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    child: const SizedBox(
                        width: 350,
                        child:DropdownButton_B()
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),


              const Row(
                children: [
                  Text("Name",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
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
                          hintText: "Enter Name",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(
                      width: 300,
                      child: Text("NOTE: Always make sure Card Number is correct.Company will not be liable for any wrong transaction",style: Text_Style.Red,))
                ],
              ),
              SizedBox(height: 30,),

              InkWell(
                child: Container(
                  height: 50,
                  width: 350,
                  color: Colors.red,
                  child: const Center(child: Text("Add Card",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                ),
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   PageTransition(
                  //     type: PageTransitionType.bottomToTop,
                  //     isIos: true,
                  //     child: const OTP_Veryfication(),
                  //   ),
                  // );
                },
              )

            ],
          ),
        ),
      ),
    );
  }
}

class DropdownButton_A extends StatefulWidget {
  const DropdownButton_A({super.key});

  @override
  State<DropdownButton_A> createState() => _DropdownButton_AState();
}

class _DropdownButton_AState extends State<DropdownButton_A> {
  String dropdownValue = list_a.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Padding(
        padding: EdgeInsets.only(left: 180),
        child: Icon(Icons.arrow_drop_down,size: 40,color: Colors.red,),
      ),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.red,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list_a.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: Text_Style.Red,),
        );
      }).toList(),
    );
  }
}



class DropdownButton_B extends StatefulWidget {
  const DropdownButton_B({super.key});

  @override
  State<DropdownButton_B> createState() => _DropdownButton_BState();
}

class _DropdownButton_BState extends State<DropdownButton_B> {
  String dropdownValue = list_b.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Padding(
        padding: EdgeInsets.only(left: 240),
        child: Icon(Icons.arrow_drop_down,size: 40,color: Colors.red,),
      ),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.red,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list_b.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: Text_Style.Red,),
        );
      }).toList(),
    );
  }
}

