import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../app_text.dart';
import 'card_beneficiary.dart';
import 'card_transacion.dart';

class Card_Money extends StatefulWidget {
  const Card_Money({super.key});

  @override
  State<Card_Money> createState() => _Card_MoneyState();
}

class _Card_MoneyState extends State<Card_Money> {
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
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.bottomRight,
            children: [
              SingleChildScrollView(
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
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                height: 220,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.red.shade200,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.red.shade200)

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10,),
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.flight,color: Colors.white,),
                                          Text("|",style: TextStyle(color: Colors.white),),
                                          Icon(Icons.shopify,color: Colors.white,),
                                          Text("|",style: TextStyle(color: Colors.white),),
                                          Icon(Icons.currency_rupee,color: Colors.white,),
                                          Text("Debit & Prepaid",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                      const SizedBox(height: 20,),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Center(child: Text("C.No: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.red),)),
                                            SizedBox(width: 10,),
                                            Center(child: Text("6935 2872 2908",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15,),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Center(child: Text("Name: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.red),)),
                                            SizedBox(width: 10,),
                                            Center(child: Text("Customer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  border: Border.all(color: Colors.red.shade200,width: 3)
                                              ),

                                              child: const Image(image: AssetImage("images/chip.png"),),
                                            ),

                                            Container(
                                              width: 130,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(color: Colors.grey,width: 3)
                                              ),

                                              child: const Image(image: AssetImage("images/RuPay.png"),),
                                            ),

                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("Debit",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
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
                                          "WITHDRAWAL",
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
                                        child: const Card_Transaction(),
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
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                height: 220,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.red.shade200,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.red.shade200)

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10,),
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.flight,color: Colors.white,),
                                          Text("|",style: TextStyle(color: Colors.white),),
                                          Icon(Icons.shopify,color: Colors.white,),
                                          Text("|",style: TextStyle(color: Colors.white),),
                                          Icon(Icons.currency_rupee,color: Colors.white,),
                                          Text("Debit & Prepaid",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                      const SizedBox(height: 20,),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Center(child: Text("C.No: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.red),)),
                                            SizedBox(width: 10,),
                                            Center(child: Text("6935 2872 2908",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15,),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Center(child: Text("Name: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.red),)),
                                            SizedBox(width: 10,),
                                            Center(child: Text("Customer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  border: Border.all(color: Colors.red.shade200,width: 3)
                                              ),

                                              child: const Image(image: AssetImage("images/chip.png"),),
                                            ),

                                            Container(
                                              width: 130,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(color: Colors.grey,width: 3)
                                              ),

                                              child: const Image(image: AssetImage("images/RuPay.png"),),
                                            ),

                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("Debit",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
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
                                          "WITHDRAWAL",
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
                                        child: const Card_Transaction(),
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
                    const SizedBox(height: 20,),
                    Container(
                        decoration: Support_container.box,
                        child:  Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                height: 220,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.red.shade200,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.red.shade200)

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10,),
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.flight,color: Colors.white,),
                                          Text("|",style: TextStyle(color: Colors.white),),
                                          Icon(Icons.shopify,color: Colors.white,),
                                          Text("|",style: TextStyle(color: Colors.white),),
                                          Icon(Icons.currency_rupee,color: Colors.white,),
                                          Text("Debit & Prepaid",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                      const SizedBox(height: 20,),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Center(child: Text("C.No: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.red),)),
                                            SizedBox(width: 10,),
                                            Center(child: Text("6935 2872 2908",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15,),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Center(child: Text("Name: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.red),)),
                                            SizedBox(width: 10,),
                                            Center(child: Text("Customer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  border: Border.all(color: Colors.red.shade200,width: 3)
                                              ),

                                              child: const Image(image: AssetImage("images/chip.png"),),
                                            ),

                                            Container(
                                              width: 130,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(color: Colors.grey,width: 3)
                                              ),

                                              child: const Image(image: AssetImage("images/RuPay.png"),),
                                            ),

                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("Debit",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
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
                                          "WITHDRAWAL",
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
                                        child: const Card_Transaction(),
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
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                child: InkWell(child: const Image(image: AssetImage("images/frame .png")
                ),
                  onTap: (){
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.bottomToTop,
                        isIos: true,
                        child: const Card_Beneficiary(),
                      ),
                    );
                  },
                ),
              )

            ],
          )
      ),
    );
  }
}