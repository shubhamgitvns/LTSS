import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recharge_setu/ui_page/welcome_page.dart';

import 'app_state.dart';
import 'localdatabase.dart';

void main() async {
  await DatabaseHandler.initialize();
  // print(App_Text.connection);
  // print(App_Text.dbmobile);
  // print(App_Text.dbmobile);
  // print(App_Text.Mpin);

  // print("search");
  // var list= await DatabaseHandler.jsons();
  //  List<Json> lst=list;
  //  // App_Text.dbmobile = list[0].mobile;
  //  print(App_Text.dbmobile);
  //  print(list);
  //App_Text.dbmobile = list[0].mobile;

  //************ Try Insert Query****************//
// if(list.isEmpty){
//   print("imptey");
//   // var javabook = Json(
//   //     App_Text.id, App_Text.dbname, App_Text.dbrole,
//   //     App_Text.dbstatus,
//   //     App_Text.dbmessage,
//   // App_Text.dbmobile,
//   // App_Text.dbfinger,
//   //   App_Text.dbmpin,
//   //   App_Text.dbtpin
//   // );
//   await DatabaseHandler.insertJson(javabook);
//   print(await DatabaseHandler.jsons());
//   print("ADD");
// }

  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MyApp(),
    ),
  );
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
