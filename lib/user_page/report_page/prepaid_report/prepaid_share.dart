import 'package:flutter/material.dart';

import '../../../app_text.dart';

class Prepaid_Transaction_Slip extends StatefulWidget {
  const Prepaid_Transaction_Slip({super.key});

  @override
  State<Prepaid_Transaction_Slip> createState() => _Prepaid_Transaction_SlipState();
}

class _Prepaid_Transaction_SlipState extends State<Prepaid_Transaction_Slip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text("Transaction Slip",style: TextStyle(fontWeight: FontWeight.bold),)),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.close_outlined,color: Colors.red,),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: Support_container.box,
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                            width: 250,
                            child: Text("Sampurna",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),)),
                        SizedBox(
                            width: 250,
                            child: Text("Maharastra",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),)),
                        SizedBox(
                            width: 250,
                            child: Text("Landline No: 6473993",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),)),
                        SizedBox(
                            width: 250,
                            child: Text("Mobile No: 6473993",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),)),

                        SizedBox(
                            width: 250,
                            child: Text("Email: ******8.gmail.com",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),)),


                      ],
                    ),
                  ),
                ),

                Column(
                  children: [
                    Image(image: AssetImage("images/G-play.png")),
                    Text("Google Play")
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            decoration: Support_container.box,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width:150,
                          child: Text("Mobile No",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 17),)),
                      SizedBox(
                          width:150,
                          child: Text("12345098",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                          width:150,
                          child: Text("Amount",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 17),)),
                      SizedBox(
                          width:150,
                          child: Text("₹ 1000.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                          width:150,
                          child: Text("Txn Id",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 17),)),
                      SizedBox(
                          width:150,
                          child: Text("s253820jdidn8393",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                          width:150,
                          child: Text("Txn Status",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 17),)),
                      SizedBox(
                          width:150,
                          child: Text("Success",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                          width:150,
                          child: Text("Operator Name",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 17),)),
                      SizedBox(
                          width:150,
                          child: Text("Google Play",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                          width:150,
                          child: Text("Date",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 17),)),
                      SizedBox(
                          width:150,
                          child: Text("11-Mar-2024",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Text("Shop Detail",style: Text_Style.Red,),
          const SizedBox(height: 20,),
          const SizedBox(
              width: 350,
              child: Text("Name: Online Center| Contact No: 64839282735| Email: *******@gmail.com ",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),
          const SizedBox(height: 30,),
          Container(
            width: 150,
            height: 50,
            color: Colors.red,

            child: const Center(child: Text("Share",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
          )

        ],
      ),
    );
  }
}
