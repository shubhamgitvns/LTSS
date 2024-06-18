import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../app_text.dart';

const List<String> list_A = <String>['50', '100', '150', '200'];
const List<String> list_B = <String>[
  '::Select Status::',
  'REQUESTED',
  'ACCEPTED',
  'REJECTED'
];
const List<String> list_C = <String>[
  'Wallet',
  'Simple',
  'Normal',
  'Hard'
];

class FundOrderReport extends StatefulWidget {
  const FundOrderReport({super.key});

  @override
  State<FundOrderReport> createState() => _FundOrderReportState();
}

class _FundOrderReportState extends State<FundOrderReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        title: Text("Prepaid Report", style: Text_Style.App),
        backgroundColor: Colors.red,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
                child: const Icon(
                  Icons.filter_alt,
                  color: Colors.white,
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.topToBottom,
                      isIos: true,
                      child: const Filter(),
                    ),
                  );
                }),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    color: Colors.white,
                    child: const SizedBox(
                      width: 350,
                      child: TextField(
                        autofocus: true,
                        cursorColor: Colors.grey,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
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
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.red),
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.red,
                              size: 30,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                      // width: 350,
                      decoration: Support_container.box,
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              "Status",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "Accepted",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Sampurn",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Text(
                                        "CREDIT AGRICOLE CORP AND INVESTMENT BANK ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                  child: Column(
                                    children: [
                                      Text(
                                        "₹2000400",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "9044136789",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Txn ID: ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Column(
                                    children: [
                                      Text(
                                        " S2404567803523172",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Txn Mode: ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width:70,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Exchange",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.calendar_month,color: Colors.grey,),
                                Text("19 Apr 2024 7:30.01 AM"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                      // width: 350,
                      decoration: Support_container.box,
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              "Status",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "Accepted",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Sampurn",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Text(
                                        "CREDIT AGRICOLE CORP AND INVESTMENT BANK ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                  child: Column(
                                    children: [
                                      Text(
                                        "₹2000400",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "9044136789",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Txn ID: ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Column(
                                    children: [
                                      Text(
                                        " S2404567803523172",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Txn Mode: ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width:70,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Exchange",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.calendar_month,color: Colors.grey,),
                                Text("19 Apr 2024 7:30.01 AM"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                      // width: 350,
                      decoration: Support_container.box,
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              "Status",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "Accepted",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Sampurn",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Text(
                                        "CREDIT AGRICOLE CORP AND INVESTMENT BANK ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                  child: Column(
                                    children: [
                                      Text(
                                        "₹2000400",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "9044136789",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Txn ID: ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Column(
                                    children: [
                                      Text(
                                        " S2404567803523172",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Txn Mode: ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width:70,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Exchange",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.calendar_month,color: Colors.grey,),
                                Text("19 Apr 2024 7:30.01 AM"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  DateTime _selectedDate1 = DateTime.now();
  DateTime _selectedDate2 = DateTime.now();

  Future<void> _fromDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate1)
      setState(() {
        _selectedDate1 = picked;
      });
  }

  Future<void> _ToDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate2)
      setState(() {
        _selectedDate2 = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Filter",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 100),
                            child: Text(
                              "From Date",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 170,
                        child: GestureDetector(
                          onTap: () => _fromDate(context),
                          child: AbsorbPointer(
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    //width: 1.5,
                                  ),
                                ),
                                labelText:
                                _selectedDate1.toString().substring(0, 10),
                                prefixIcon: const Icon(
                                  Icons.calendar_month,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 100),
                            child: Text(
                              "To Date",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 170,
                        child: GestureDetector(
                          onTap: () => _ToDate(context),
                          child: AbsorbPointer(
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    //width: 1.5,
                                  ),
                                ),
                                labelText:
                                _selectedDate2.toString().substring(0, 10),
                                prefixIcon: const Icon(
                                  Icons.calendar_month,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Account Number/Recharge NUmber",
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
                          hintText: "Enter Number",
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
                    "Transaction Id",
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
                          hintText: "Enter Id",
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
                    "Wallet Type",
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
                        child: Wallet_Type(),
                      )),
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Text(
                    "Choose Top",
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
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Choose Status ",
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
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                            "Filter",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )))
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
  String dropdownValue = list_A.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Padding(
        padding: EdgeInsets.only(left: 250),
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
      items: list_A.map<DropdownMenuItem<String>>((String value) {
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
  String dropdownValue = list_B.first;

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
      items: list_B.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}



class Wallet_Type extends StatefulWidget {
  const Wallet_Type({super.key});

  @override
  State<Wallet_Type> createState() => _Wallet_TypeState();
}

class _Wallet_TypeState extends State<Wallet_Type> {
  String dropdownValue = list_C.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Padding(
        padding: EdgeInsets.only(left: 220),
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
        //color: Colors.white,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list_C.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
