import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App_Text{
  static  TextEditingController username = TextEditingController();
  static  TextEditingController email = TextEditingController();
  static  TextEditingController conformpin = TextEditingController();
  static  TextEditingController pincode = TextEditingController();

}

class Input_Style{
  static final  InputDecoration style= InputDecoration(
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
class Text_Style{
  static  final TextStyle ts=TextStyle(color: Colors.black,fontWeight: FontWeight.bold);
  static  final TextStyle heder=TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.w600);
  // static  final TextStyle info=TextStyle(color: Colors.grey,fontSize: 15,);
}