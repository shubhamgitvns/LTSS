import 'package:flutter/material.dart';
import 'package:recharge_setu/app_text.dart';
class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Text("707178345",style: Text_Style.Red,),
                        const SizedBox(
                            height: 30,
                            child: Image(image: AssetImage("images/mobile_th.png")))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("707178345",style: Text_Style.Red,),
                        const SizedBox(
                            height: 30,
                            child: Image(image: AssetImage("images/landline.png")))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("707178345",style: Text_Style.Red,),
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
                        Text("707178345",style: Text_Style.Red,),
                        const SizedBox(
                            height: 30,
                            child: Image(image: AssetImage("images/mobile_th.png")))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("707178345",style: Text_Style.Red,),
                        const SizedBox(
                            height: 30,
                            child: Image(image: AssetImage("images/landline.png")))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("707178345",style: Text_Style.Red,),
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
    );
  }
}
