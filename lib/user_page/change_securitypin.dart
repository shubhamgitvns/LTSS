import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';
import 'package:recharge_setu/user_page/profile_page.dart';
import '../app_text.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class Chandge_Security_Pin extends StatefulWidget {
  const Chandge_Security_Pin({super.key});

  @override
  State<Chandge_Security_Pin> createState() => _Chandge_Security_PinState();
}

class _Chandge_Security_PinState extends State<Chandge_Security_Pin> {
  List<TextEditingController> controllers =
      List.generate(8, (index) => TextEditingController());

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  String message = "";
  String status = "";
  bool click =false;
  @override
  Widget build(BuildContext context) {
    final defaltPinTheme = PinTheme(
        width: 80,
        height: 70,
        textStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.red)));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(
              height: 250,
              child: Image(image: AssetImage('images/change.png'))),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 580,
                width: 400,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
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
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // const SizedBox(height: 10,),
                      Row(
                        children: [
                          Text(
                            "Change Security Access PIN",
                            style: Text_Style.heder,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Text(
                              "All the personal information tobe fill",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Row(
                        children: [
                          Text("Enter New Pin",
                              style: TextStyle(color: Colors.red)),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Pinput(
                              length: 4,
                              defaultPinTheme: defaltPinTheme,
                              focusedPinTheme: defaltPinTheme.copyWith(
                                  decoration: defaltPinTheme.decoration!
                                      .copyWith(
                                          border:
                                              Border.all(color: Colors.red))),
                              onCompleted: (pin) {
                                App_Text.new_Tpin = pin;
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      const Row(
                        children: [
                          Text("Enter Confirm Pin",
                              style: TextStyle(color: Colors.red)),
                        ],
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Pinput(
                              length: 4,
                              defaultPinTheme: defaltPinTheme,
                              focusedPinTheme: defaltPinTheme.copyWith(
                                  decoration: defaltPinTheme.decoration!
                                      .copyWith(
                                          border:
                                              Border.all(color: Colors.red))),
                              onCompleted: (pin) {
                                App_Text.conf_Tpin = pin;
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      if(click == false)
                      InkWell(
                        child: Container(
                          height: 50,
                          width: 300,
                          color: Colors.red,
                          child: const Center(
                              child: Text(
                            "Change",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20),
                          )),
                        ),
                        onTap: () async {
                          setState(() {
                            click =true;
                          });
                          if (App_Text.new_Tpin.isEmpty && App_Text.conf_Tpin.isEmpty) {
                            setState(() {
                              message = "not equal";
                              App_Text.new_Tpin = "";
                              App_Text.conf_Tpin = "";
                              print(message);
                            });
                          }

                          if (App_Text.new_Tpin == App_Text.conf_Tpin &&
                              App_Text.new_Tpin.isNotEmpty &&
                              App_Text.conf_Tpin.isNotEmpty) {
                            print(App_Text.Current_Tpin);
                            final url = Uri.https("ltss.pocketmoney.net.in", "/Users/ChangeTPIN", {

                              "Mobile": App_Text.dbmobile,
                              'pin':App_Text.Current_Tpin,
                              'newpin':App_Text.new_Tpin
                            } as Map<String, dynamic>?);
                            try {
                              final response = await http.post(url);
                              //print("Response $response");
                              print("status${response.statusCode}");
                              print("Body${response.body}");
                              final jsonResponse = convert.jsonDecode(response.body);
                              setState(() {
                                status = jsonResponse["status"];
                                print("status=========>"+status);
                              });

                              return jsonResponse;
                            } catch (e) {
                              print(e);
                            }

                          } else {
                            setState(() {
                              message = "not equal";
                              print(message);
                            });

                          };
                        }
                      ),
                    ],
                  ),
                ),
              ),

              if(message == "not equal")
                Padding(
                  padding: const EdgeInsets.only(bottom: 150),
                  child: Container(
                    height: 180,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.error_outline,color: Colors.red,size: 70,),
                        const Text(
                          "Conform Password Does Not Match",
                          style: TextStyle(color: Colors.red),
                        ),
                        const SizedBox(height: 20,),
                        InkWell(
                          child: Container(
                            height: 40,
                            width: 80,
                            color: Colors.red,
                            child: const Center(child: Text("Ok",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                          ),
                          onTap: (){
                            setState(() {
                              message="";
                              App_Text.new_Tpin ="";
                              App_Text.conf_Tpin ="";
                              click = false;
                            });

                          },
                        )
                      ],
                    ),
                  ),
                ),

              if(status == "success" && click)
                Padding(
                  padding: const EdgeInsets.only(bottom: 150),
                  child: Container(
                    height: 180,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.check_box,color: Colors.red.shade300,size: 70,),
                        const Text(
                          "TPIN Updated",
                          style: TextStyle(color: Colors.green),
                        ),
                        const SizedBox(height: 20,),
                        InkWell(
                          child: Container(
                            height: 40,
                            width: 80,
                            color: Colors.red,
                            child:  Center(child: InkWell(child: const Text("Ok",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                              onTap: (){
                                setState(() {
                                  App_Text.Mpin = App_Text.new_Mpin;
                                  print(App_Text.Mpin);
                                  click = true;
                                });
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
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

              if(status == "failed" && click)
                Padding(
                  padding: const EdgeInsets.only(bottom: 150),
                  child: Container(
                    height: 180,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error_outline,color: Colors.red.shade300,size: 70,),
                        const Text(
                          "Sorry, T-PIN is wrong",
                          style: TextStyle(color: Colors.red),
                        ),
                        const SizedBox(height: 20,),
                        InkWell(
                          child: Container(
                            height: 40,
                            width: 80,
                            color: Colors.red,
                            child:  Center(child: InkWell(child: const Text("Ok",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                              onTap: (){
                                setState(() {

                                  App_Text.Mpin = App_Text.new_Mpin;
                                  click = true;
                                });
                                Navigator.pop(context);
                              },
                            ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}

