import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App_Text{
  static  TextEditingController username = TextEditingController();

}

class Input_Style{
  static final  InputDecoration style= InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
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
    prefix: Icon(
      Icons.person,
      color: Colors.teal,

    ),
    labelText: "Name",
    // labelStyle: TextStyle(color: App_Theam.Teal),
  );

}
class Text_Style{
  static  final TextStyle ts=TextStyle(color: Colors.black,fontWeight: FontWeight.bold);
  static  final TextStyle heder=TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.w600);
}