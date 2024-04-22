import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/ui_page/home_page/home_page.dart';
import 'package:recharge_setu/user_page/changepassword_page.dart';
import 'package:recharge_setu/user_page/current_password.dart';
import 'package:recharge_setu/user_page/current_securitypin.dart';
import 'package:recharge_setu/user_page/support_page.dart';
import 'package:recharge_setu/user_page/user_detail.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: const Text(
          "Profile",
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
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: const Offset(
                        2.0,
                        2.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Column(
                            children: [
                              //************ User image ********************************//
                  SizedBox(height:80,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 150,
                            child: Image(image: AssetImage("images/avtar.png"))),
                      )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                //************ User name ********************************//
                                Row(
                                  children: [
                                    const Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //************ view button ********************************//
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    InkWell(
                                      child: Container(
                                          height: 25,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.red.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                  color: Colors.red)),
                                          child: const Text(
                                            "View",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.red),
                                            textAlign: TextAlign.center,
                                          )),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType
                                                .bottomToTop,
                                            isIos: true,
                                            child: const User_Detail(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),

                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 120),
                                      child: Text(
                                        "Data",
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const Divider(),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("Income Wallet",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(height: 10,),
                              Text(
                                "₹ 359",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                              height: 80,
                                  child: Image(image: AssetImage("images/pocket.png")))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: 500,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red.shade50,
                              image: const DecorationImage(
                                 image: AssetImage("images/faqs.png"),
                                  fit: BoxFit.scaleDown)),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          'FAQS',
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 190,
                        ),
                        const Text(
                          ">",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red.shade50,
                              image: const DecorationImage(
                                  image:AssetImage("images/privacy.png"),
                                  fit: BoxFit.scaleDown)),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          'Privacy Policy',
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 130,
                        ),
                        const Text(
                          ">",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red.shade50,
                              image: const DecorationImage(
                                  image:AssetImage("images/terms.png"),
                                  fit: BoxFit.scaleDown)),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          'Terms & Conditions',
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        const Text(
                          ">",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red.shade50,
                              image: const DecorationImage(
                                  image: AssetImage("images/rate.png"),
                                  fit: BoxFit.scaleDown)),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          'Rate App',
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 165,
                        ),
                        const Text(
                          ">",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red.shade50,
                              image: const DecorationImage(
                                  image: AssetImage("images/lock.png"),
                                  fit: BoxFit.scaleDown)),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          'Change Password',
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        InkWell(
                          child: const Text(
                            ">",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.topToBottom,
                                isIos: true,
                                child: const Current_password(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red.shade50,
                              image: const DecorationImage(
                                  image:AssetImage("images/logout.png"),
                                  fit: BoxFit.scaleDown)),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          'Logout',
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 180,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: InkWell(
                            child: const Text(
                              ">",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 300,
                                    color: Colors.red.shade100,
                                    child: Center(
                                      child: Column(
                                        // mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Center(
                                              child: Text(
                                            "Log Out",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          )),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Center(
                                              child: Text(
                                            " Do you really want to log out ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          )),
                                          const SizedBox(
                                            height: 50,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.red)),
                                                  child: const Center(
                                                      child: Text(
                                                    "No",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.red),
                                                  )),
                                                ),
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .topToBottom,
                                                      isIos: true,
                                                      child: const Profile(),
                                                    ),
                                                  );
                                                },
                                              ),
                                              InkWell(
                                                child: Container(
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      border: Border.all(
                                                          color: Colors.red)),
                                                  child: const Center(
                                                      child: Text(
                                                    "Yes",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  )),
                                                ),
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .leftToRight,
                                                      isIos: true,
                                                      child: const Home(),
                                                    ),
                                                  );
                                                },
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red.shade50,
                              image: const DecorationImage(
                                  image:AssetImage("images/key.png"),
                                  fit: BoxFit.scaleDown)),
                        ),
                        const Text(
                          'Change Security Access Pin',
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: InkWell(
                            child: const Text(
                              ">",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  isIos: true,
                                  child: const Current_Security_Pin(),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
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
