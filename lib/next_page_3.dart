import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/ui_page/next_page_2.dart';
import 'package:recharge_setu/user_verification/login_page.dart';
import 'package:recharge_setu/user_verification/forgotpin_page.dart';

class Next_Three extends StatelessWidget {
  const Next_Three({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                          child: const Text(
                            "X",
                            style: TextStyle(fontSize: 25, color: Colors.red),
                          )),
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            isIos: true,
                            child: Next_Two(),
                          ),
                        );

                      },
                    ),
                    InkWell(
                      child: Container(
                          child: const Text(
                            "Skip",
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          )),
                      onTap: () {
                        print("hii");
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 200,
                child: Image.network(
                  "https://thumbs.dreamstime.com/b/portrait-young-man-sitting-his-desk-using-laptop-flat-vector-illustration-red-monochrome-young-man-sitting-his-desk-using-170206984.jpg?w=768",
                ),
              ),
              SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 250,
                      child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."))
                ],
              ),
              const SizedBox(
                height: 320,
              ),
              Container(
                child: Expanded(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        color: Colors.white12,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("data"),
                              InkWell(
                                child: Container(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.orange),
                                    child: const Center(
                                        child: Text(
                                          "Next ->",
                                          style: TextStyle(fontSize: 15, color: Colors.white),
                                        ))),
                                onTap: (){
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Next_Two()));
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.topToBottom,
                                      duration: Duration(milliseconds: 500),
                                      isIos: true,
                                      child: Login(),
                                    ),
                                  );

                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
