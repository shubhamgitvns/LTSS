import 'package:flutter/material.dart';
import 'package:recharge_setu/ui_page/welcome_page.dart';

import 'app_text.dart';
import 'jsonclass.dart';
import 'localdatabase.dart';

void main() async {
  await DatabaseHandler.initialize();
  print("search");
  var list= await DatabaseHandler.jsons();
   List<Json> lst=list;
   print(list);
   //App_Text.dbmobile = list[0].mobile;

 //************ Try Insert Query****************//
if(list.isEmpty){
  print("imptey");
  var javabook = Json(
      App_Text.id, App_Text.dbname, App_Text.dbrole,
      App_Text.dbstatus,
      App_Text.dbmessage,
  App_Text.dbmobile);
  await DatabaseHandler.insertJson(javabook);
  print(await DatabaseHandler.jsons());
  print("ADD");
}

  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recharge Setu',
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
        // '/home': (BuildContext context) => const _HomePage(),
        // '/two': (BuildContext context) => const _PageTwo(),
        },
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}