import 'package:flutter/material.dart';
import 'package:recharge_setu/app_text.dart';

class User_Detail extends StatefulWidget {
  const User_Detail({super.key});


  @override
  State<User_Detail> createState() => _User_DetailState();
}

class _User_DetailState extends State<User_Detail> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: const Text(
          "View",
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
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red.shade100),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Column(
                        children: [
                          CircleAvatar(
                            radius: 80,
                            backgroundImage: NetworkImage(
                                "https://img.freepik.com/premium-vector/young-smiling-man-avatar-man-with-brown-beard-mustache-hair-wearing-yellow-sweater-sweatshirt-3d-vector-people-character-illustration-cartoon-minimal-style_365941-860.jpg"),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  App_Text.name,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                App_Text.role,
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.red.shade50,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Text(" Business Info", style: Text_Style.view_head),
                  ),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        App_Text.role,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        " ${App_Text.shopname}",

                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 350,
                        child: Text(
                          App_Text.shopaddress,

                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),


                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.red.shade50,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " Personal Details",
                      style: Text_Style.view_head,
                    ),
                  )
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width:100,
                        child: Text("User Name:",   style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      Text(
                        App_Text.name,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width:100,
                        child: Text("Mobile NO:",   style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      Text(
                        App_Text.dbmobile,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width:100,
                        child: Text("Gmail:",   style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      Text(
                  App_Text.email,

                        style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width:100,
                        child: Text("Address:",   style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        width:250,
                        child: Text(
                          App_Text.address,

                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width:100,
                        child: Text("PIN Code:",   style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      Text(
                        App_Text.pincode,

                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width:100,
                        child: Text("Aadhaar No: ",   style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      Text(
                        App_Text.adharno,

                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width:100,
                        child: Text("Pan:",   style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      Text(
                        App_Text.pan,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),

                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.red.shade50,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " Bank Details",
                      style: Text_Style.view_head,
                    ),
                  )
                ],
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width:120,
                        child: Text("Bank Name: ",   style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      Text(
                        App_Text.bankname,

                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Row(
                    children: [
                      const SizedBox(
                        width:120,
                        child: Text("Account No:",   style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      Text(
                        App_Text.Acno,

                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width:120,
                        child: Text("IFSC:",   style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      Text(
                        App_Text.IFSC,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width:120,
                        child: Text("Branch:",   style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        width: 180,
                        child: Text(
                          App_Text.branchname,

                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
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
