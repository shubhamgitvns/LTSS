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
      "PaymentMode": App_Text.Payment_mode,
      "Amount": App_Text.amount.text,
      "Bank": App_Text.bank,
      "BankRefNum": App_Text.ref_number.text,
      "Remarks": App_Text.remark.text,
      "AccountHolder": App_Text.account_holder.text,

      //*********** fund transfer*************//
      "distMobile": App_Text.dbmobile,
      "retMobile": App_Text.ret_Mobile,
      'amount':App_Text.fund_tr_amount.text,
      'remarks':App_Text.fund_tr_remark.text,
      'tpin':App_Text.fund_tr_Tpin.text,

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