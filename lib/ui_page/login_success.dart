import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:recharge_setu/jsonclass.dart';
import 'package:recharge_setu/main.dart';
import 'package:recharge_setu/ui_page/home_page/home_page.dart';
import '../app_text.dart';
import '../localdatabase.dart';
import 'bottom_navigation.dart';

class Login_Success extends StatefulWidget {
  const Login_Success({super.key});

  @override
  State<Login_Success> createState() => _Login_SuccessState();
}

class _Login_SuccessState extends State<Login_Success> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   super.initState();
  //   Timer(const Duration(seconds: 3),(){
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>BottomCollectionBoy(index: 0),));
  //   });
  //
  // }
  // @override
  String bookid="";
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            // color: Colors.red.shade100,
            child: Column(
              children: [
                const SizedBox(height: 70,),
                const Row(
                  children: [
                    Text(" Congratulations !",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.red),),
                  ],
                ),

                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(App_Text.message,style: const TextStyle(color: Colors.green,fontWeight: FontWeight.w500,fontSize: 35),),
                  ],
                ),
            const SizedBox(height: 20,),
            Center(
              child: LoadingAnimationWidget.prograssiveDots(
                color: Colors.red,
                size: 50,
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  Text("Id"),
                  SizedBox(
                    width: 60,
                    child: TextField(
                      onChanged: (value) {
                        bookid = value;
                      },
                      controller: App_Text.idcontroler,
                    ),
                  ),
                ]),
                InkWell(
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    child: Text("Search"),
                  ),
                  onTap: () async{
                    print("search");
                    var list= await DatabaseHandler.jsons();
                     List<Json> lst=list;
                    print(bookid);
                    list=   list.where((element) => element.id==bookid).toList();
                    print(list.length);
                    print(list);
                    if(list.length<=0)
                       print("not");
                      //message="Not Found";
                    else
                    {
                      print("found");
                      print(list);
                      //message="Found";
                      Json json=list.first;
                      print(json);
                      // namecontroller.text=book.name;
                      // pricecontroller.text=book.price.toString();
                    }
                    setState(() {

                    });

                  },
                ),
              ],
            ),
                SizedBox(height: 20,),
                InkWell(
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.red,
                    child: Text("Update"),
                  ),
                  onTap: () async{
                    App_Text.id=4;
                    App_Text.dbname="Shubham";
                    var javabook = Json(App_Text.id,App_Text.dbname, App_Text.dbrole, App_Text.dbstatus,App_Text.dbmessage,App_Text.dbmobile);
                    await DatabaseHandler.updateJson(javabook);
                    print(await DatabaseHandler.jsons());
                    print(App_Text.dbname);
                    print("Update");
                  },
                ),
                SizedBox(height: 20,),
                InkWell(
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.green,
                    child: Text("Insert"),
                  ),
                  onTap: ()async{
                    //print("hiii");
                      var javabook = Json(
                          App_Text.id, App_Text.dbname, App_Text.dbrole,
                          App_Text.dbstatus,
                          App_Text.dbmessage,
                      App_Text.dbmobile);
                      await DatabaseHandler.insertJson(javabook);
                      print(await DatabaseHandler.jsons());
                      print("ADD");

                  },
                ),
            ],
          ),
        ),
      ),
      )
    );
  }
}
