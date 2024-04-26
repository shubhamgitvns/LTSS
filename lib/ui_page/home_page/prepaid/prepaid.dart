import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/ui_page/home_page/prepaid/prepaid_recharge.dart';
class Prepaid extends StatefulWidget {
  const Prepaid({super.key});

  @override
  State<Prepaid> createState() => _PrepaidState();
}

class _PrepaidState extends State<Prepaid> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: const Text("Prepaid ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            const Row(
              children: [
                Text("Enter Phone Number",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 5,),
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
                        hintText: " Enter Number",
                        hintStyle: TextStyle(color: Colors.red),
                        prefixIcon: Icon(Icons.mobile_friendly,color: Colors.red,)
                        // suffix: Image(image: AssetImage("images/mobile_th.png"))
                      ),
                    ),
                  ),
                ),
              ],
            ),


            const SizedBox(height: 20,),
            const Row(
              children: [
                Text("Name",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            const SizedBox(height: 10,),
            const Row(
              children: [
                Text("Address",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),

            const SizedBox(height: 10,),
            const Row(
              children: [
                Text("Pin",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),


            const SizedBox(height: 80,),

            InkWell(
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: const Center(child: Text("Recharge",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    isIos: true,
                    child: const Prepaid_Recharge(),
                  ),
                );
              },
            )


          ],
        ),
      ),
    );
  }
}
