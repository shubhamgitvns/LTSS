import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/ui_page/home_page/prepaid/prepaid.dart';
import 'package:recharge_setu/ui_page/home_page/prepaid/best_offer.dart';
import 'package:recharge_setu/ui_page/home_page/prepaid/view_plans.dart';

const List<String> list = <String>[
  'Select',
  'All',
  'Recharge',
  'DTH',
  'Electricity',
  'DMT',
  'Payout'
];

class Prepaid_Recharge extends StatefulWidget {
  const Prepaid_Recharge({super.key});

  @override
  State<Prepaid_Recharge> createState() => _Prepaid_RechargeState();
}

class _Prepaid_RechargeState extends State<Prepaid_Recharge> {
  bool recharge = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: const Text(
          "Prepaid",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
            alignment: Alignment.topCenter,
            children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        color: Colors.red,
                        child: const Center(
                            child: Text(
                          "Recharge",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red)),
                        // color: Colors.red,
                        child: const Center(
                            child: Text(
                          "History",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
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
                      "Enter Phone Number",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
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
                      child: const SizedBox(
                        width: 350,
                        child: TextField(
                          autofocus: true,
                          cursorColor: Colors.red,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.black, fontSize: 18),
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
                              hintText: "Enter Number",
                              hintStyle: TextStyle(color: Colors.red),
                              prefixIcon: Icon(
                                Icons.mobile_friendly,
                                color: Colors.red,
                              ),
                            suffixIcon: Icon(Icons.contact_phone_rounded,color: Colors.red,)
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
                      "Select Operator",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
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
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.network_check_sharp,color: Colors.red,),
                              SizedBox(width: 20,),
                              DropdownButtonExample(),
                            ],
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      "Enter Your Amount",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
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
                      child: const SizedBox(
                        width: 350,
                        child: TextField(
                          autofocus: true,
                          cursorColor: Colors.red,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.black, fontSize: 18),
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
                              hintText: "Enter Amount",
                              hintStyle: TextStyle(color: Colors.red),
                              prefixIcon: Icon(
                                Icons.currency_rupee,
                                color: Colors.red,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
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
                          "View Plane",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            isIos: true,
                            child: const View_Plans(),
                          ),
                        );
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
                          "Best Offer",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            isIos: true,
                            child: const Best_Offer(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const SizedBox(
                    width: 350,
                    child: Text(
                      "Note: kindly check once again all information before doing transactions.otherwise after transaction recharge amount will not recive",
                      style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                    )),

                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      "Recharge",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  onTap: () {
                    setState(() {
                      recharge = true;
                    });
                  },
                ),
              ],
            ),
          ),
          if (recharge)

            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                  width: 300,
                  height: 400,
                  decoration: Support_container.box,
                  child:  Column(
                    children: [
                      const Text(
                        "₹ 19",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Airtel"),
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
        ]),
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
        padding: EdgeInsets.only(left: 150),
        child: Icon(
          Icons.arrow_drop_down,
          color: Colors.red,
          size: 40,
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
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
