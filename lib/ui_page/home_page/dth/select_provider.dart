import 'package:flutter/material.dart';
import 'package:recharge_setu/app_text.dart';

class Select_Provider extends StatefulWidget {
  const Select_Provider({super.key});

  @override
  State<Select_Provider> createState() => _Select_ProviderState();
}

class _Select_ProviderState extends State<Select_Provider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Select Provider",style:Text_Style.App,),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.search_outlined,color: Colors.white,size: 30,),
          )
        ],
      ),
    );
  }
}
