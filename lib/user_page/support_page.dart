import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/Retailer/retailer_bottomnavigation.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/ui_page/bottom_navigation.dart';
class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  get value => null;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if(App_Text.role == "DISTRIBUTOR") {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.rightToLeft,
              isIos: true,
              child: BottomCollectionBoy(index: 1),
            ),
          );
        }else{
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.leftToRight,
              isIos: true,
              child: Retailer_Bottomnavigation(index: 1,),
            ),
          );
        }
          

       if(value != null){
          return Future.value(value);
        }else{
          return Future.value(false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red,
          title: const Text(
            " Support",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          actions: const [
            Image(
              image: AssetImage("images/white_bell.png"),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Image(
                image: AssetImage("images/i_wht.png"),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Text("Contact Us",style: Text_Style.heder,),
              const SizedBox(height: 20,),
              Center(
                child: Container(
                  width: 350,
                  decoration: Support_container.box,
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Customer Care",style: Text_Style.Red,),
                          const SizedBox(
                            height: 30,
                              child: Image(image: AssetImage("images/customer.png")))
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text("707178345",style: Text_Style.Red,),
                          ),
                          const SizedBox(
                              height: 30,
                              child: Image(image: AssetImage("images/mobile_th.png")))
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text("707178345",style: Text_Style.Red,),
                          ),
                          const SizedBox(
                              height: 30,
                              child: Image(image: AssetImage("images/landline.png")))
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text("707178345",style: Text_Style.Red,),
                          ),
                          const SizedBox(
                              height: 30,
                              child: Image(image: AssetImage("images/whasapp.png")))
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("info@gmail.com",style: Text_Style.Red,),
                          const SizedBox(
                              height: 30,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Image(image: AssetImage("images/mail.png")),
                              ))
                        ],
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),

              Center(
                child: Container(
                  width: 350,
                  decoration: Support_container.box,
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Account & Finance",style: Text_Style.Red,),
                          const SizedBox(
                              child: Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Image(image: AssetImage("images/card.png")),
                              ))
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 70),
                            child: Text("707178345",style: Text_Style.Red,),
                          ),
                          const SizedBox(
                              height: 30,
                              child: Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Image(image: AssetImage("images/mobile_th.png")),
                              ))
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Text("707178345",style: Text_Style.Red,),
                          ),
                          const SizedBox(
                              height: 30,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Image(image: AssetImage("images/landline.png")),
                              ))
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Text("707178345",style: Text_Style.Red,),
                          ),
                          const SizedBox(
                              height: 30,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Image(image: AssetImage("images/whasapp.png")),
                              ))
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("info@gmail.com",style: Text_Style.Red,),
                          const SizedBox(
                              height: 30,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Image(image: AssetImage("images/mail.png")),
                              ))
                        ],
                      ),
                      const SizedBox(height: 10,),

                    ],
                  ),
                ),
              ),
      const SizedBox(height: 20,),
              Container(
                width: 350,
                decoration: Support_container.box,
                child:  Row(
                  children: [
                    const SizedBox(
                      height: 50,
                        child: Image(image: AssetImage("images/facebook.png"))),
                    Column(
                      children: [
                        Text("Facebook",style: Text_Style.Red,),
                        const Text("Follow Us",style: TextStyle(color: Colors.red,decoration: TextDecoration.underline,decorationColor: Colors.red),)
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                width: 350,
                decoration: Support_container.box,
                child:  Row(
                  children: [
                    const SizedBox(
                        height: 50,
                        child: Image(image: AssetImage("images/insta.png"))),
                    const SizedBox(width: 5,),
                    Column(
                      children: [
                        Text("Instagram",style: Text_Style.Red,),
                        const Text("Follow Us",style: TextStyle(color: Colors.red,decoration: TextDecoration.underline,decorationColor: Colors.red),)
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                width: 350,
                decoration: Support_container.box,
                child:  Row(
                  children: [
                    const SizedBox(
                        height: 50,
                        child: Image(image: AssetImage("images/dmt.png"))),
                    Column(
                      children: [
                        Text("Address",style: Text_Style.Red,),
                        const Text("Maharashtra",style: TextStyle(color: Colors.red),)
                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
