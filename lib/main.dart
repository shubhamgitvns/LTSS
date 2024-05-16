import 'package:flutter/material.dart';
import 'package:recharge_setu/ui_page/welcome_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'Utilities.dart';
import 'app_text.dart';


void main() {

  runApp(const MyApp());
}

// class MyHttpOverrides extends HttpOverrides {
//   @override
//   HttpsClient (SecurityContext context) {
//     if (Platform.isAndroid) {
//       return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
//     }
//
//     return super.createHttpClient(context)
//       ..findProxy = (uri) {
//         return "PROXY localhost:8080";
//       }
//       ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
//   }
//
// }



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recharge Setu',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}