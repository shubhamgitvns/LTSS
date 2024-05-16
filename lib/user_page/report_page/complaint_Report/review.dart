import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../../app_text.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  double _value = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        title: Text("Review", style: Text_Style.App),
        backgroundColor: Colors.red,

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 30,),
           // if(create==true)
           Row(
             children: [
               const Column(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(bottom: 50),
                     child: SizedBox(
                       width:300,
                       child: Row(
                         children: [
                           Text("Order Create : "),
                           Text("10/5/2024 10:30 AM",style: TextStyle(color: Colors.grey),),
                         ],
                       ),
                     ),
                   ),

                 ],
               ),
               Column(
                 children: [
                   Container(
                     height: 10,
                     width: 10,
                     decoration:  BoxDecoration(
                         color: Colors.red,
                         border: Border.all(color: Colors.red),
                         borderRadius: BorderRadius.circular(10)
                     ),
                   ),
                   Container(
                     height: 60,
                     width: 3,
                     decoration: const BoxDecoration(
                         color: Colors.red
                     ),
                   ),
                 ],
               ),

             ],
           ),
           Row(
             children: [
               const Column(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(top: 50),
                     child: SizedBox(
                       width: 300,
                       child: Row(
                         children: [
                           Text("Order Processing : "),
                           Text("10/5/2024 10:30 AM",style: TextStyle(color: Colors.grey),),
                         ],
                       ),
                     ),
                   ),

                 ],
               ),
               Column(
                 children: [

                   Container(
                     height: 70,
                     width: 3,
                     decoration: const BoxDecoration(
                         color: Colors.red
                     ),
                   ),
                   Container(
                     height: 10,
                     width: 10,
                     decoration:  BoxDecoration(
                         color: Colors.red,
                         border: Border.all(color: Colors.red),
                         borderRadius: BorderRadius.circular(10)
                     ),
                   ),
                 ],
               ),

             ],
           ),
           Row(
             children: [
               const Column(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(top: 50),
                     child: SizedBox(
                       width: 300,
                       child: Row(
                         children: [
                           Text("Accept Time : "),
                           Text("10/5/2024 10:30 AM",style: TextStyle(color: Colors.grey),),
                         ],
                       ),
                     ),
                   ),

                 ],
               ),
               Column(
                 children: [

                   Container(
                     height: 80,
                     width: 3,
                     decoration: BoxDecoration(
                         color: Colors.grey.shade200
                     ),
                   ),
                   Container(
                     height: 10,
                     width: 10,
                     decoration:  BoxDecoration(
                         color: Colors.grey.shade300,
                         borderRadius: BorderRadius.circular(10)
                     ),
                   ),
                 ],
               ),

             ],
           ),


            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                          width: 150,
                          child: Text("Request Date: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),))
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                          width: 200,
                          child: Text("10/5/2024 10:30 AM",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),))
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                          width: 150,
                          child: Text("Accept Reject Date: ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),))
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                          width: 200,
                          child: Text("13/5/2024 10:30 AM",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




