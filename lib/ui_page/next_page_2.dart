import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/next_page_3.dart';
import 'package:recharge_setu/ui_page/next_page_1.dart';

class Next_Two extends StatelessWidget {
  const Next_Two({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
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
                            child: const Next_one(),
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
              Image.network(
                "https://www.shutterstock.com/image-vector/cartoon-software-update-people-mobile-260nw-1903643518.jpg",
                height: 200,
              ),
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
                height: 300,
              ),
              Container(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 100,
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
                                    type: PageTransitionType.rightToLeft,
                                    isIos: true,
                                    child: Next_Three(),
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
            ],
          ),
        ),
      ),
    );
  }
}
