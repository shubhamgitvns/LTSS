import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/photo_eploder.dart';
import 'package:recharge_setu/user_page/fund_request/fund_request_report.dart';

import '../../ui_page/home_page/card/card_beneficiary.dart';
class Fund_Request extends StatefulWidget {
  const Fund_Request({super.key});

  @override
  State<Fund_Request> createState() => _Fund_RequestState();
}

class _Fund_RequestState extends State<Fund_Request> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Fund Request",style: Text_Style.App,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
        
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Payment Mode",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DropdownButtonExample(),
                      )),
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      width: 350,
                      child: TextField(
                        autofocus: true,
                        cursorColor: Colors.red,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.red,
                              //width: 1.5,
                            ),
                          ),
        
                          //********Focus border like hover******************8
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red)),
                          hintText: "Enter Amount",
                          hintStyle: const TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
        
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Bank",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DropdownButton_B(),
                      )),
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Text(
                    "Reference Number",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      width: 350,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        autofocus: true,
                        cursorColor: Colors.red,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.red,
                              //width: 1.5,
                            ),
                          ),
        
                          //********Focus border like hover******************8
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red)),
                          hintText: "Reference Number",
                          hintStyle: const TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Remark",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      width: 350,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        autofocus: true,
                        cursorColor: Colors.red,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.red,
                              //width: 1.5,
                            ),
                          ),
        
                          //********Focus border like hover******************8
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red)),
                          hintText: "Remark",
                          hintStyle: const TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Photo Up-lode",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                color: Colors.white,
                child:MyHomePage(title: 'Image picker',),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white, fontSize: 20),
        
                            ))),
                    onTap: (){
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRight,
                          isIos: true,
                          child:  FundOrderReport(),
                        ),
                      );
                    },
                  )
                ],
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
  String dropdownValue = list_a.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Padding(
        padding: EdgeInsets.only(left: 150),
        child: Icon(
          Icons.arrow_drop_down,
          color: Colors.red,
          size: 30,
        ),
      ),
      elevation: 16,
      style: const TextStyle(
          color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
      underline: Container(
        height: 0,
        color: Colors.white,
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
          child: Text(value),
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
        padding: EdgeInsets.only(left: 210),
        child: Icon(
          Icons.arrow_drop_down,
          color: Colors.red,
          size: 30,
        ),
      ),
      elevation: 16,
      style: const TextStyle(
          color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
      underline: Container(
        height: 0,
        color: Colors.white,
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
          child: Text(value),
        );
      }).toList(),
    );
  }
}
