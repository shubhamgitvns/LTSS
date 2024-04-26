import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/ui_page/home_page/fundtransfer.dart';

class Retailer extends StatefulWidget {
  const Retailer({super.key});

  @override
  State<Retailer> createState() => _RetailerState();
}

class _RetailerState extends State<Retailer> {
  bool light = true;
  bool text = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Retailer List",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  color: Colors.white,
                  child: const SizedBox(
                    width: 390,
                    child: TextField(
                      autofocus: true,
                      cursorColor: Colors.red,
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
                          hintText: "Search by user name",
                          hintStyle: TextStyle(color: Colors.red),
                          suffixIcon: Icon(Icons.search,color: Colors.red,size: 40,)

                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 110,
              decoration: Support_container.box,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Column(
                        children: [
                          SizedBox(
                              height: 60,
                              child:
                                  Image(image: AssetImage("images/inco.png")))
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              "Maa Mobile",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text("87604049",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Text(" ₹ 1054",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            InkWell(
                              child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration:
                                      const BoxDecoration(color: Colors.red),
                                  child: const Center(
                                      child: Text(
                                    "Fund Transfer",
                                    style: TextStyle(color: Colors.white),
                                  ))),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const Fund_Transfer(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      const Column(
                        children: [SwitchExample()],
                      )
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 110,
              decoration: Support_container.box,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Column(
                        children: [
                          SizedBox(
                              height: 60,
                              child:
                              Image(image: AssetImage("images/inco.png")))
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              "Maa Mobile",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text("87604049",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Text(" ₹ 1054",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            InkWell(
                              child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration:
                                  const BoxDecoration(color: Colors.red),
                                  child: const Center(
                                      child: Text(
                                        "Fund Transfer",
                                        style: TextStyle(color: Colors.white),
                                      ))),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const Fund_Transfer(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      const Column(
                        children: [SwitchExample()],
                      )
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 110,
              decoration: Support_container.box,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Column(
                        children: [
                          SizedBox(
                              height: 60,
                              child:
                              Image(image: AssetImage("images/inco.png")))
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              "Maa Mobile",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text("87604049",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Text(" ₹ 1054",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            InkWell(
                              child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration:
                                  const BoxDecoration(color: Colors.red),
                                  child: const Center(
                                      child: Text(
                                        "Fund Transfer",
                                        style: TextStyle(color: Colors.white),
                                      ))),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const Fund_Transfer(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      const Column(
                        children: [SwitchExample()],
                      )
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 110,
              decoration: Support_container.box,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Column(
                        children: [
                          SizedBox(
                              height: 60,
                              child:
                              Image(image: AssetImage("images/inco.png")))
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              "Maa Mobile",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text("87604049",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Text(" ₹ 1054",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            InkWell(
                              child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration:
                                  const BoxDecoration(color: Colors.red),
                                  child: const Center(
                                      child: Text(
                                        "Fund Transfer",
                                        style: TextStyle(color: Colors.white),
                                      ))),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const Fund_Transfer(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      const Column(
                        children: [SwitchExample()],
                      )
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 110,
              decoration: Support_container.box,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Column(
                        children: [
                          SizedBox(
                              height: 60,
                              child:
                              Image(image: AssetImage("images/inco.png")))
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              "Maa Mobile",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text("87604049",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Text(" ₹ 1054",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            InkWell(
                              child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration:
                                  const BoxDecoration(color: Colors.red),
                                  child: const Center(
                                      child: Text(
                                        "Fund Transfer",
                                        style: TextStyle(color: Colors.white),
                                      ))),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    isIos: true,
                                    child: const Fund_Transfer(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      const Column(
                        children: [SwitchExample()],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;
  bool text = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
          // This bool value toggles the switch.
          value: light,
          activeColor: Colors.red,
          onChanged: (bool value) {
            // This is called when the user toggles the switch.
            setState(() {
              light = value;
              text = light;
            });
          },
        ),
        if (text)
          const Text(
            "Active",
            style: TextStyle(color: Colors.green),
          ),
        if (text == false) const Text("Inactive"),
      ],
    );
  }
}
