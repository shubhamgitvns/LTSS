import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/user_page/changepassword_page.dart';
import 'package:recharge_setu/user_page/current_password.dart';
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
    return SafeArea(
      child: Scaffold(
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
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage(
                                      "https://img.freepik.com/premium-vector/young-smiling-man-avatar-man-with-brown-beard-mustache-hair-wearing-yellow-sweater-sweatshirt-3d-vector-people-character-illustration-cartoon-minimal-style_365941-860.jpg"),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  //************ User name ********************************//                  
                                  Row(
                                    children: [
                                      const Text(
                                        "Shubham singh",
                                        style: TextStyle(
                                            color: Colors.black,fontWeight: FontWeight.bold),
                                      ),
                                      //************ view button ********************************//
                                      const SizedBox(width: 50,),
                                      InkWell(
                                        child: Container(
                                            height: 25,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.red.shade100,
                                              borderRadius: BorderRadius.circular(30),
                                            border: Border.all(color: Colors.red)),
                                            child: const Text("View",style: TextStyle(fontSize: 15,color: Colors.red)
                                              ,textAlign: TextAlign.center,)),
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.bottomToTop,
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
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'LTS',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red.shade600)),
                                  const TextSpan(
                                      text: ' Solutions',
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                            ),
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
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red),
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red.shade50,
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaj-a-tulvrE2oOr5hOpUWC3FtQGKjFymgOe3pD2O-oUg_lTRBbMheR8BNA6MfbRhzc6c&usqp=CAU"),
                                    fit: BoxFit.scaleDown)),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          const Text(
                            'Support',
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                          const SizedBox(
                            width: 170,
                          ),
                          InkWell(
                            child: const Text(
                              ">",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  isIos: true,
                                  child: const Support(),
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
                                    image: NetworkImage(
                                        "https://i.pinimg.com/originals/23/a6/14/23a6145a8302314c230696b85f7d7829.png"),
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
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtbXr0-6GigVh6NiYFc9IsWc91sV0ps12Gmg&usqp=CAU"),
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
                                    image: NetworkImage(
                                        "https://st3.depositphotos.com/1688079/17277/i/450/depositphotos_172774802-stock-photo-terms-and-conditions-pages-icon.jpg"),
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
                      padding: EdgeInsets.all(8.0),
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
                                    image: NetworkImage(
                                        "https://s.cafebazaar.ir/images/icons/com.macropinch.hydra.android-4a7b592b-d4a7-4cf3-beda-2dffa4d9ed25_512x512.png?x-img=v1/resize,h_256,w_256,lossless_false/optimize"),
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
                                    image: NetworkImage(
                                        "https://cdn2.iconfinder.com/data/icons/mix-color-5/100/Mix_color_5__lock-16-512.png"),
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
                            ),onTap: (){
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
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0AmQKohd_5Y0wyyN0x5-l-U34vlqwsH3AJwFiNeX4S1hsrpiZGGj-j9HWvHD0k6k7a1w&usqp=CAU"),
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
                          const Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              ">",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
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
                                    image: NetworkImage(
                                        "https://cdn.icon-icons.com/icons2/1880/PNG/512/iconfinder-key-4341299_120569.png"),
                                    fit: BoxFit.scaleDown)),
                          ),
                          const Text(
                            'Change Security Access Pin',
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              ">",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
