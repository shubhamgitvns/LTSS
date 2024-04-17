import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../app_text.dart';
import 'forgotpin_page.dart';
class FingerPrint extends StatefulWidget {
  const FingerPrint({super.key});

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 230,
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMn8XrLqYl_NUOFUkFtBZ0zQCLkX3kiDWTGQOcwpLEPx-rk1tWEkNSB-Xsa_0quNqPa7w&usqp=CAU"),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: 560,
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
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Login with touch ID",
                                style: Text_Style.heder,
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width:350,
                                child: Text(
                                  "Use your Touch ID for the faster, easier access to your payment or transaction",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.network("https://media.istockphoto.com/id/1145032425/video/fingerprint-scan-icon-animation.jpg?s=640x640&k=20&c=cUPwdPxL1z_Q_uEStCLOy1QxNBIWtiR6oNXf-WUbg44="),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width:350,
                                  child: Text("All of the Touch ID fingerprints stored on this device can be used to log inot your account")),
                            ],
                          ),

                          const SizedBox(
                            height: 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.red)
                                ),
                                
                                child: const Center(
                                    child: Text(
                                      "Skip this step",
                                      style: TextStyle(
                                          color: Colors.red,),
                                    )),
                              ),
                              Container(
                                height: 50,
                                 width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.red,
                                    border: Border.all(color: Colors.red)
                                ),
                                child: const Center(
                                    child: Text(
                                      "Turn on Touch ID",
                                      style: TextStyle(
                                          color: Colors.white,),
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
