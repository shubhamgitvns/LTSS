import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/ui_page/home_page/payout/payout_money.dart';
import 'package:recharge_setu/ui_page/home_page/payout/payout_register.dart';
import '../../../app_text.dart';

class Payout extends StatefulWidget {
  const Payout({super.key});

  @override
  State<Payout> createState() => _PayoutState();
}

class _PayoutState extends State<Payout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Payout",style: Text_Style.App,),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Image(image: AssetImage("images/i_wht.png")),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("images/icon_wallet.png")),
              SizedBox(width: 20,),
              Text("Wallet Balance",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),)
            ],
          ),
          const SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("₹359.6",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),),

            ],
          ),
          const SizedBox(height: 20,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Min. amount ₹100. Max. amount  ₹50,000",style: TextStyle(color: Colors.grey,fontSize: 15,),),
            ],
          ),
          const SizedBox(height: 20,),

          const Padding(
            padding: EdgeInsets.only(left: 50),
            child: Row(
              children: [
                Text("Mobile Number",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                Container(
                  color: Colors.white,
                  child: const SizedBox(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      cursorColor: Colors.red,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          color: Colors.black,fontSize: 18),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.red,
                            //width: 1.5,
                          ),
                        ),

                        //********Focus border like hover******************8
                        focusedBorder: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                        hintText: "Mobile Number",
                        hintStyle: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 100,
          ),
          InkWell(
            child: Container(
              height: 50,
              width: 300,
              color: Colors.red,
              child: const Center(
                  child: Text(
                    "Validate",
                    style: TextStyle(
                        color: Colors.white, fontSize: 20),
                  )),
            ),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  isIos: true,
                  child: const Payout_Money(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have account?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              InkWell(
                child: const Text(
                  " Register",
                  style: TextStyle(
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      isIos: true,
                      child: const Payout_Register(),
                    ),
                  );
                },
              ),
            ],
          )


        ],
      ),
    );
  }
}
