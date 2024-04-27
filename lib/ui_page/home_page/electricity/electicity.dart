import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/ui_page/home_page/electricity/electricity_form.dart';

class Electricity_Operator extends StatefulWidget {
  const Electricity_Operator({super.key});

  @override
  State<Electricity_Operator> createState() => _Electricity_OperatorState();
}

class _Electricity_OperatorState extends State<Electricity_Operator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text(
          "Select Electricity Operator",
          style: Text_Style.App,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Column(
                    children: [
                      SizedBox(
                          height: 60,
                          child: Image(image: AssetImage("images/adani.png"))),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Adani Electricity",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      isIos: true,
                      child: const Electricity_form(),
                    ),
                  );
                },
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  children: [
                    SizedBox(
                        width: 120,
                        height: 60,
                        child:
                            Image(image: AssetImage("images/tata_power.png"))),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "TATA Power",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  children: [
                    SizedBox(
                        width: 120,
                        height: 60,
                        child: Image(image: AssetImage("images/best.png"))),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Best",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  children: [
                    SizedBox(
                        width: 120,
                        height: 60,
                        child: Image(image: AssetImage("images/maedc.png"))),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "MSEDC",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  children: [
                    SizedBox(
                        width: 120,
                        height: 60,
                        child: Image(image: AssetImage("images/torrent.png"))),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Torrent Power",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  children: [
                    SizedBox(
                        width: 120,
                        height: 60,
                        child: Image(image: AssetImage("images/best.png"))),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Best",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text(
                  " All Electricity Operator",
                  style: Text_Style.Red,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Operator_List(),
                Divider(),
                Operator_List(),
                Divider(),
                Operator_List(),
                Divider(),
                Operator_List(),
                Divider(),
                Operator_List(),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Operator_List extends StatefulWidget {
  const Operator_List({super.key});

  @override
  State<Operator_List> createState() => _Operator_ListState();
}

class _Operator_ListState extends State<Operator_List> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red.shade50),
            borderRadius: BorderRadius.circular(5)),
        child: const Row(
          children: [
            SizedBox(
                height: 50, child: Image(image: AssetImage("images/tata.png"))),
            Text(" APSPDCL AP SOUTH"),
          ],
        ),
      ),
    );
  }
}
