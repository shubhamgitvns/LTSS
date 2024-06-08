import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
bool create =false;
class App_Text {
  static TextEditingController username = TextEditingController();
  static TextEditingController email = TextEditingController();
  static TextEditingController conformpin = TextEditingController();
  static TextEditingController idcontroler = TextEditingController();
  static TextEditingController number = TextEditingController();
  static TextEditingController Tpin = TextEditingController();

  static String Mpin="";
  static String Current_Tpin="";
  static String Current_Mpin="";
  static String new_Mpin="";
  static String conf_Mpin="";
  static String new_Tpin="";
  static String conf_Tpin="";
  static String name="";
  static String role="";
  static String message="";
  static String status="";

  static String dbname="myname";
  static String dbrole="role";
  static String dbstatus="status";
  static String dbmessage="message";
  static String dbmobile="mobile";
  static String dbfinger="finger";
  static String dbmpin="000000";
  static String dbtpin="000000";
  static int id= 1;

  static bool login = false;
}

class Input_Style {
  static final InputDecoration style = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 1.5,
      ),
    ),

    //********Focus border like hover******************8
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: Colors.red,
        )),
  );
}

class Text_Style {
  static final TextStyle view_head =
      TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20);
  static final TextStyle heder =
      TextStyle(color: Colors.red, fontSize: 25, fontWeight: FontWeight.w600);
  static final TextStyle Red =
  TextStyle(color: Colors.red, fontSize: 17, fontWeight: FontWeight.w600);

  static final TextStyle App =
  TextStyle(color: Colors.white, fontWeight: FontWeight.w600);

}

class Support_container {
  static final BoxDecoration box = BoxDecoration(
      border: Border.all(color: Colors.grey.shade50),
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
  );
}
