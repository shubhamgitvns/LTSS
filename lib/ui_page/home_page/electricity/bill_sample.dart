import 'package:flutter/material.dart';
import 'package:recharge_setu/app_text.dart';
class Bill_Sample extends StatefulWidget {
  const Bill_Sample({super.key});

  @override
  State<Bill_Sample> createState() => _Bill_SampleState();
}

class _Bill_SampleState extends State<Bill_Sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Bill Sample",style: Text_Style.App,),
      ),
    );
  }
}
