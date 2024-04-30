import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../app_text.dart';
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class DMT_Transaction extends StatefulWidget {
  const DMT_Transaction({super.key});

  @override
  State<DMT_Transaction> createState() => _DMT_TransactionState();
}

class _DMT_TransactionState extends State<DMT_Transaction> {
  bool recharge  =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("DMT Transaction Information",style: Text_Style.App,),
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
          child:Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [

                      const Row(
                        children: [
                          Text("HDFC Bank",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
                        ],
                      ),

                      const SizedBox(height: 20,),
                      const Row(
                        children: [
                          Text("12334 7876 0987",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize:20),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Row(
                        children: [
                          Text("Customer Name",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
                        ],
                      ),


                      const SizedBox(height: 20,),
                      const Row(
                        children: [
                          Text("Transaction Type",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      const Row(
                        children: [
                          RadioExample(),
                        ],
                      ),
                      const SizedBox(height: 20,),

                      const Row(
                        children: [
                          Text("Amount",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
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
                                    hintText: "Enter Amount",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    prefixIcon: Icon(Icons.currency_rupee,color: Colors.red,)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),

                      InkWell(
                        child: Container(
                          height: 50,
                          width: 350,
                          color: Colors.red,
                          child: const Center(child: Text("Transfer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                        ),
                        onTap: (){
                         setState(() {
                           recharge=true;
                         });
                        },
                      ),

                      

                    ],
                  ),
                  if (recharge)

                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                          width: 350,
                          height: 480,
                          decoration: Support_container.box,
                          child:  BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY:10.0),

                            child: Column(
                              children: [
                                const SizedBox(height: 30,),
                                const SizedBox(
                                    height:100,
                                    child: Image(image: AssetImage("images/airtel_dth.png"))),
                                const SizedBox(height: 10,),
                                const Text(
                                  "₹ 19",
                                  style:
                                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("HDFC"),
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
                            ),
                          )
                      ),
                    )
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 160,
            child: ListTile(
                  title: const Text('NEFT',style: TextStyle(color: Colors.grey),),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.jefferson,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
          ),

          SizedBox(
            width: 160,
            child: ListTile(
              title: const Text('IMPS',style: TextStyle(color: Colors.grey),),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.lafayette,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}




