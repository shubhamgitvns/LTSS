import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/ui_page/next_page_2.dart';
import 'package:recharge_setu/ui_page/welcome_page.dart';

class Next_one extends StatelessWidget {
  const Next_one({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                          child: MyApp(),
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
            SizedBox(
              height: 50,
            ),
            Container(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQTnbOp_8E3MFdAg4M4X_nB87IqOYn0RHZkLXKr5dQONHboYmtdIwBxvPlFNmJBz1OjEE&usqp=CAU",
                height: 200,
              ),
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
            SizedBox(
              height: 350,
            ),
            Padding(
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
                        child: Center(
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
                          child: Next_Two(),
                        ),
                      );

                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
