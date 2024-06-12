import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:recharge_setu/jsonclass.dart';
import 'dart:convert' as convert;

import 'app_text.dart';
import 'localdatabase.dart';



class Utilities {
  static Future Downloaddata(String link) async {
    var list= await DatabaseHandler.jsons();

    final url = Uri.https("ltss.pocketmoney.net.in", link, {
    "Mobile": App_Text.dbmobile,
    "Mpin": App_Text.Mpin,
    "pin": App_Text.Mpin,
    'newpin': App_Text.new_Mpin,
      // 'Mobile':App_Text.number.text
    } as Map<String, dynamic>?);
    try {
      final response = await http.post(url);
      //print("Response $response");
       print("status${response.statusCode}");
      print("Body${response.body}");

       final jsonResponse = convert.jsonDecode(response.body);
      // Map<String, dynamic> jsonMap = json.decode(response.body);
      // return Person.fromJson(jsonMap);
     // // Iterable l = json.decode(response.body);
     //  List<Person> posts = List<Person>.from(jsonResponse.map((model)=> Person.fromJson(model)));
     //  print(posts[0]);
       print(jsonResponse.runtimeType);
      return jsonResponse;

    } catch (e) {
      print(e);
      return false;
    }
  }
}