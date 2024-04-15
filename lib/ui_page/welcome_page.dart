import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 200,
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Recharge', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.red.shade600)),
                    const TextSpan(text: ' Setu',style: TextStyle(fontSize: 30,color: Colors.red)),
                  ],
                ),
                         ),
             ],
           ),
          const SizedBox(
            height: 200,
          ),

           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Power by Sampurna",style: TextStyle(fontSize: 20,color: Colors.grey.shade400),),
            ],
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}