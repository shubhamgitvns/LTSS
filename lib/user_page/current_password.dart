import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';
import 'package:recharge_setu/user_page/changepassword_page.dart';

import '../app_text.dart';

class Current_password extends StatefulWidget {
  const Current_password({super.key});


  @override
  State<Current_password> createState() => _Current_passwordState();
}

class _Current_passwordState extends State<Current_password> {
  List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());

  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }
  String message = "";
  @override
  Widget build(BuildContext context) {
    final defaltPinTheme = PinTheme(
        width: 50,
        height: 60,
        textStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.red)));

    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(
              height: 250,
              child: Image(image: AssetImage('images/login.png'))),
          Container(
            child: Stack(
              children: [
                Container(
                  height: 580,
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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // const SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Enter Current Password",style: Text_Style.heder,),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const SizedBox(
                          height: 50,
                        ),
                        const Row(
                          children: [
                            Text("Enter Current Password",style: TextStyle(color: Colors.red)),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Pinput(
                                length: 6,
                                defaultPinTheme: defaltPinTheme,
                                focusedPinTheme: defaltPinTheme.copyWith(
                                    decoration: defaltPinTheme.decoration!
                                        .copyWith(
                                        border:
                                        Border.all(color: Colors.red))),
                                onCompleted: (pin) {
                                  App_Text.Current_Mpin = pin;
                                  print("pin===>" + App_Text.Mpin);
                                }),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(message,style: const TextStyle(color: Colors.red),)
                          ],
                        ),

                        const SizedBox(
                          height: 70,
                        ),
                        InkWell(
                          child: Container(
                            height: 50,
                            width: 300,
                            color: Colors.red,
                            child: const Center(child: Text("Change",style: TextStyle(color: Colors.white,fontSize: 20),)),
                          ),
                          onTap: (){
                            print(App_Text.Mpin);

                            if(App_Text.Current_Mpin == App_Text.Mpin) {
                              setState(() {
                                message="";
                              });
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  isIos: true,
                                  child: const Change_password(),
                                ),
                              );
                            }else{
                              setState(() {

                                message = "Please Enter Correct Password";
                              });
                              print(message);
                            }

                          },
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}


