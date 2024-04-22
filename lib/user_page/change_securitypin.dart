import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/user_page/profile_page.dart';

import '../app_text.dart';
class Chandge_Security_Pin extends StatefulWidget {
  const Chandge_Security_Pin({super.key});

  @override
  State<Chandge_Security_Pin> createState() => _Chandge_Security_PinState();
}

class _Chandge_Security_PinState extends State<Chandge_Security_Pin> {
  List<TextEditingController> controllers = List.generate(8, (index) => TextEditingController());


@override
void dispose() {
  controllers.forEach((controller) => controller.dispose());
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(
              height: 250,
              child: Image(image: AssetImage('images/change.png'))),
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
                            Text("Change Security Access PIN",style: Text_Style.heder,),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              Text("All the personal information tobe fill",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Row(
                          children: [
                            Text("Enter New Pin",style: TextStyle(color: Colors.red)),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextBox(controller: controllers[0]),
                            TextBox(controller: controllers[1]),
                            TextBox(controller: controllers[2]),
                            TextBox(controller: controllers[3]),

                          ],
                        ),
                        const SizedBox(height: 20,),

                        const Row(
                          children: [
                            Text("Enter Confirm Pin",style: TextStyle(color: Colors.red)),
                          ],
                        ),

                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextBox(controller: controllers[4]),
                            TextBox(controller: controllers[5]),
                            TextBox(controller: controllers[6]),
                            TextBox(controller: controllers[7]),
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
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.leftToRight,
                                isIos: true,
                                child: const Profile(),
                              ),
                            );

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

class TextBox extends StatelessWidget {
  final TextEditingController controller;

  const TextBox({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5), // Optional: Add border radius
      ),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        maxLength: 1,
        decoration: InputDecoration(
          counterText: "",
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red), // Red focus border
            borderRadius: BorderRadius.circular(5), // Optional: Add border radius
          ),
        ),
      ),
    );
  }
}