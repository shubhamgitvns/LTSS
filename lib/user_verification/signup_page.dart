import 'package:flutter/material.dart';

import '../app_text.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Container(
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS449M1oWQ6r9NKeJWkaAGoEcDN-PaKjDPlGbYorKfAvXoRPh_Qa5rnw1mCz6OhQ6hcGds&usqp=CAU"),
          ),

          Expanded(
            child: Container(
              child: Stack(
                children: [
                  Container(
                    height: 560,
                    width: 400,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 10,
                            spreadRadius: 1.0,
                          ),
                          BoxShadow(
                            color: Colors.red,
                            offset: Offset(-2.0, -2.0),
                            blurRadius: 10,
                            spreadRadius: 1.0,
                          ),
                        ]
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Signup",style:Text_Style.heder),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 300,
                              child: TextField(
                                autofocus: true,
                                controller: App_Text.username,
                                style: Text_Style.ts,
                                decoration: Input_Style.style
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
