import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

const List<String> list = <String>['Select', 'All', 'Recharge', 'DTH', 'Electricity', 'DMT', 'Payout'];

class User_Daybook extends StatefulWidget {
  const User_Daybook({super.key});

  @override
  State<User_Daybook> createState() => _User_DaybookState();
}

class _User_DaybookState extends State<User_Daybook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // backgroundColor: Colors.red,
        title: const Text("User Day Book",style: TextStyle(color: Colors.red),),
        actions: [
          InkWell(
            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.filter_alt,color: Colors.red,size: 30,),
            ),
            onTap: (){
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRight,
                  isIos: true,
                  child: const User_Filter(),
                ),
              );
            },
          )
        ],
      ),
      body:GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 4,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            // color: Colors.teal[100],
            child: const Text("All",style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Amount",style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Charge",style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),

          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Com",style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Recharge",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("5000",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),

          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("50",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("168",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),

          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("DTH",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("6000",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("50",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(6),
            child: const Text("250",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Electricity",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("500",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("50",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("150",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("DMT",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("68000",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("50",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("248",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Payout",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("58000",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("50",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("50",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          ),

          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Total",style: TextStyle(color: Colors.red,fontSize: 17,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("......",style: TextStyle(color: Colors.red,fontSize: 17,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("......",style: TextStyle(color: Colors.red,fontSize: 17,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("......",style: TextStyle(color: Colors.red,fontSize: 17,fontWeight: FontWeight.bold),),
          ),

        ],
      )
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
        padding: EdgeInsets.only(left: 200),
        child: Icon(Icons.arrow_downward,color: Colors.red,),
      ),
      elevation: 16,
      style: const TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),
      // underline: Container(
      //   height: 1,
      //   color: Colors.red,
      // ),
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

class User_Filter extends StatefulWidget {
  const User_Filter({super.key});

  @override
  State<User_Filter> createState() => _User_FilterState();
}

class _User_FilterState extends State<User_Filter> {
  @override
  Widget build(BuildContext context) {
    DateTime selectedDate1 = DateTime.now();
    DateTime selectedDate2 = DateTime.now();

    Future<void> fromDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101),
      );
      if (picked != null && picked != selectedDate1)
        setState(() {
          selectedDate1 = picked;
        }
        );
    }

    Future<void> ToDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101),
      );
      if (picked != null && picked != selectedDate2) {
        setState(() {
          selectedDate2 = picked;
        }
        );
      }
    }
    return SafeArea(
      child: Scaffold(
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
              const SizedBox(height: 20,),
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
                            child: Text("From Date",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5,),

                      SizedBox(
                        width: 170,
                        child: GestureDetector(
                          onTap: () => fromDate(context),
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
                                selectedDate1.toString().substring(0, 10),
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
                            child: Text("To Date",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5,),
                      SizedBox(
                        width: 170,
                        child: GestureDetector(
                          onTap: () => ToDate(context),
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
                                selectedDate2.toString().substring(0, 10),
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
              Row(
                children: [
                  Container(
                    height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DropdownButtonExample(),
                      )),
                ],
              ),
              const SizedBox(height: 50,),

              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
                ),
                
                child: const Center(child: Text("Filter",style: TextStyle(color: Colors.white,fontSize: 20,),)),
              )






            ],
          ),

        ),
      ),
    );
  }
}
