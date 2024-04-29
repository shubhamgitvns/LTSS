import 'package:flutter/material.dart';

import '../../../app_text.dart';

const List<String> list = <String>['HDFC', 'Union', 'Indian', 'Punjab'];

class UPI_Beneficiary extends StatefulWidget {
  const UPI_Beneficiary({super.key});

  @override
  State<UPI_Beneficiary> createState() => _UPI_BeneficiaryState();
}

class _UPI_BeneficiaryState extends State<UPI_Beneficiary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Add Beneficiary",style: Text_Style.App,),
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


              const SizedBox(height: 20,),


              const Row(
                children: [
                  Text("UPI ID",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
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
                          hintText: "Enter Account Number",
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
                  Text("Beneficiary Name",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
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
                          hintText: "Enter Beneficiary Name",
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
                      child: Text("NOTE: Always make sure your account Number & IFSC code is correct.Company will not be liable for any wrong transaction",style: Text_Style.Red,))
                ],
              ),
              SizedBox(height: 30,),

              InkWell(
                child: Container(
                  height: 50,
                  width: 350,
                  color: Colors.red,
                  child: const Center(child: Text("Add Beneficiary",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
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

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Padding(
        padding: EdgeInsets.only(left: 250),
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
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: Text_Style.Red,),
        );
      }).toList(),
    );
  }
}
