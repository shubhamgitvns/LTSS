import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/ui_page/home_page/dmt/add_benificency.dart';
import 'package:recharge_setu/ui_page/home_page/dmt/dmt_transectiom.dart';

import '../../../app_text.dart';
import 'otp_veryfication.dart';

class Send_Money extends StatefulWidget {
  const Send_Money({super.key});

  @override
  State<Send_Money> createState() => _Send_MoneyState();
}

class _Send_MoneyState extends State<Send_Money> {
  bool benificiar = true;
  bool transation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text(
          "Send Money",
          style: Text_Style.App,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Image(image: AssetImage("images/i_wht.png")),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Name", style: Text_Style.Red),
                  const Text(
                    " +993647290",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "₹25000.00",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Total Limit ",
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "₹0.0",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Consumed Limit",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade50,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "₹25000.00",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Recharge Limit",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      InkWell(
                        child: Text(
                          "Beneficiaries",
                          style: Text_Style.Red,
                        ),
                        onTap: () {
                          setState(() {
                            benificiar = true;
                            transation = false;
                          });
                        },
                      ),
                      if (benificiar == true)
                        const SizedBox(
                            width: 100,
                            child: Divider(
                              color: Colors.red,
                            )),
                    ],
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Text(
                          "Transaction",
                          style: Text_Style.Red,
                        ),
                        if (transation)
                          const SizedBox(
                              width: 100,
                              child: Divider(
                                color: Colors.red,
                              )),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        benificiar = false;
                        transation = true;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
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
                                color: Colors.grey,
                                //width: 1.5,
                              ),
                            ),
        
                            //********Focus border like hover******************8
                            focusedBorder: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                            hintText: "Search a bank or account number",
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 30,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            Container(
              decoration: Support_container.box,
              child:  Column(
                children: [
                  const Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                              width: 200,
                              child: Text(
                                "Name",
                                style: TextStyle(
                                    color: Colors.grey, fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                              width: 200,
                              child: Text(
                                "Manni Devi",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              width: 200,
                              child: Text(
                                "Bank Name",
                                style: TextStyle(
                                    color: Colors.grey, fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                              width: 200,
                              child: Text(
                                "Bank Of In dia",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              width: 200,
                              child: Text(
                                "Account Number",
                                style: TextStyle(
                                    color: Colors.grey, fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                              width: 200,
                              child: Text(
                                "1234 7687 23",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              width: 200,
                              child: Text(
                                "IFSC Code",
                                style: TextStyle(
                                    color: Colors.grey, fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                              width: 200,
                              child: Text(
                                "1234 7687 23",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: const Image(image: AssetImage("images/tick.png")),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          height: 50,
                          width: 200,
                          color: Colors.red,
                          child: const Center(
                              child: Text(
                                "Transfer",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.bottomToTop,
                              isIos: true,
                              child: const DMT_Transaction(),
                            ),
                          );
                        },
                      ),
                      const Image(image: AssetImage("images/delete.png")),
                    ],
                  ),
                ],
              )
            ),
        
              const SizedBox(
                height: 20,
              ),
              Container(
                  decoration: Support_container.box,
                  child:  Column(
                    children: [
                      const Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Name",
                                    style: TextStyle(
                                        color: Colors.grey, fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Manni Devi",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Bank Name",
                                    style: TextStyle(
                                        color: Colors.grey, fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Bank Of In dia",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Account Number",
                                    style: TextStyle(
                                        color: Colors.grey, fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                  width: 200,
                                  child: Text(
                                    "1234 7687 23",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 200,
                                  child: Text(
                                    "IFSC Code",
                                    style: TextStyle(
                                        color: Colors.grey, fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                  width: 200,
                                  child: Text(
                                    "1234 7687 23",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: const Image(image: AssetImage("images/tick.png")),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Container(
                              height: 50,
                              width: 200,
                              color: Colors.red,
                              child: const Center(
                                  child: Text(
                                    "Transfer",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  isIos: true,
                                  child: const DMT_Transaction(),
                                ),
                              );
                            },
                          ),
                          const Image(image: AssetImage("images/delete.png")),
                        ],
                      ),
                    ],
                  )
              ),
              const SizedBox(
                height: 20,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(child: const Image(image: AssetImage("images/frame .png")
                  ),
                    onTap: (){
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.bottomToTop,
                          isIos: true,
                          child: const Add_Benificiancy(),
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
