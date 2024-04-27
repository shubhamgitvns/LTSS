import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/app_text.dart';
import 'package:recharge_setu/ui_page/home_page/prepaid/best_offer.dart';
import 'package:recharge_setu/ui_page/home_page/prepaid/view_plans.dart';
class Google_Pay extends StatefulWidget {
  const Google_Pay({super.key});

  @override
  State<Google_Pay> createState() => _Google_PayState();
}

class _Google_PayState extends State<Google_Pay> {
  bool recharge=false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Google_Pay",style: Text_Style.App,),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Column(
                      children: [

                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                         children: [
                         Image(image: AssetImage("images/G-play.png")) ,
                           SizedBox(width: 20,),
                           Text("Google Play Recharge Code",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),)
                         ],
                       ),
                        const SizedBox(height: 20,),
                        const Row(
                          children: [
                            Text(
                              "Enter Phone Number",
                              style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              color: Colors.white,
                              child: const SizedBox(
                                width: 350,
                                child: TextField(
                                  autofocus: true,
                                  cursorColor: Colors.red,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: Colors.black, fontSize: 18),
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
                                      hintText: "Enter Number",
                                      hintStyle: TextStyle(color: Colors.red),
                                      prefixIcon: Icon(
                                        Icons.mobile_friendly,
                                        color: Colors.red,
                                      ),
                                      suffixIcon: Icon(Icons.contact_phone_rounded,color: Colors.red,)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Text(
                              "Enter Your Amount",
                              style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              color: Colors.white,
                              child: const SizedBox(
                                width: 350,
                                child: TextField(
                                  autofocus: true,
                                  cursorColor: Colors.red,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: Colors.black, fontSize: 18),
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
                                      hintText: "Enter Amount",
                                      hintStyle: TextStyle(color: Colors.red),
                                      prefixIcon: Icon(
                                        Icons.currency_rupee,
                                        color: Colors.red,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Text("Min Rs. 10 and Rs. 5000",style: Text_Style.Red,)
                          ],
                        ),
                        const SizedBox(height: 20,),
                         Column(
                           children: [
                             Row(
                              children: [
                              Text("Recommended",style: Text_Style.Red,)
                              ],
                             ),
                             const SizedBox(height: 5,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Container(
                                   height: 30,
                                   width: 50,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),
                                     border: Border.all(color: Colors.red.shade100)
                                   ),
                                   child: const Center(child: Text("₹30",style: TextStyle(color: Colors.red),)),
                                 ),
                                 Container(
                                   height: 30,
                                   width: 50,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       border: Border.all(color: Colors.red.shade100)
                                   ),
                                   child: const Center(child: Text("₹50",style: TextStyle(color: Colors.red),)),
                                 ),
                                 Container(
                                   height: 30,
                                   width: 50,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       border: Border.all(color: Colors.red.shade100)
                                   ),
                                   child: const Center(child: Text("₹100",style: TextStyle(color: Colors.red),)),
                                 ),
                                 Container(
                                   height: 30,
                                   width: 50,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       border: Border.all(color: Colors.red.shade100)
                                   ),
                                   child: const Center(child: Text("₹800",style: TextStyle(color: Colors.red),)),
                                 )

                               ],
                             )
                           ],
                         ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  isIos: true,
                                  child: const Terms_Condition(),
                                ),
                              );
                            });
                          },
                        ),
                            const Text("Terms & Condition",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)

                          ],
                        ),
                        const SizedBox(height: 20,),
                        const SizedBox(
                            width: 350,
                            child: Text(
                              "Note: kindly check once again all information before doing transactions.otherwise after transaction recharge amount will not recive",
                              style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                            )),

                        const SizedBox(
                          height: 50,
                        ),
                        InkWell(
                          child: Container(
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                                child: Text(
                                  "Recharge",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          onTap: () {
                            setState(() {
                              recharge = true;
                            });
                          },
                        ),
                      ],
                    ),
                    if (recharge)

                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Container(
                            width: 350,
                            height: 400,
                            decoration: Support_container.box,
                            child:  Column(
                              children: [
                                const SizedBox(height: 30,),
                                const Image(image: AssetImage("images/G-play.png")),
                                const SizedBox(height: 10,),
                                const Text(
                                  "₹ 19",
                                  style:
                                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Airtel"),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("823456819",
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(
                                    width: 200,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Pin Code",
                                        hintStyle: TextStyle(color: Colors.red),
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      child: const Text(
                                        "Cancel",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      onTap: (){
                                        setState(() {
                                          recharge=false;
                                        });

                                      },
                                    ),
                                    const Text(
                                      "Continue",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(
                                    width: 250,
                                    child: Text(
                                      "Note: kindly check once again all information before doing transactions.",
                                      style: TextStyle(color: Colors.red),
                                    )),
                                const SizedBox(
                                    width: 250,
                                    child: Text(
                                      "otherwise after transaction recharge amount will not recive",
                                      style: TextStyle(color: Colors.red),
                                    )),
                              ],
                            )),
                      )
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}



class Terms_Condition extends StatefulWidget {
  const Terms_Condition({super.key});

  @override
  State<Terms_Condition> createState() => _Terms_ConditionState();
}

class _Terms_ConditionState extends State<Terms_Condition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Google_Pay",style: Text_Style.App,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(

          children: [
            SizedBox(
              width: 350,

                child: Text("Google Play recharge code purchases are non-refundable. Google Play recharge codes can only be used on the Google Play Store to purchase apps, games, digital content and in-app items available on the Store. See play.google.com/in-card-termsfor full terms. Issued by Google Payment Singapore Pte. Ltd. for purchases of eligible items on Google Play only. Users must be Indian residents aged 18+. Between the ages of 13 and 17, the consent of a parent or guardian is required prior to making a purchase. Requires a Google Payments account and Internet access to redeem. Not usable for hardware and certain subscriptions. Other limits may apply. No fees or expiration. Card not redeemable for cash or other cards, not reloadable or refundable and cannot be combined with non-Google Play balances, resold, exchanged or transferred for value. User is responsible for loss of card. For help, visit support.google.com/googleplay/go/ cardhelp. Only use this gift card's code on Google Play. Any other request for the code may be a scam. Visitplay.google.com/giftcardscam"
                ,style: Text_Style.Red,)),
          ],
        ),
      ),
    );
  }
}
