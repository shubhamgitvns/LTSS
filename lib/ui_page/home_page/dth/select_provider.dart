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
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey.shade100,
            child: const Column(
              children: [
                SizedBox(
                  height: 100,
                    child: Image(image: AssetImage("images/airtel_dth.png"))),
                 SizedBox(height: 10,),
                 Text("Airtel Digital Tv",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red),),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey.shade100,
            child: const Column(
              children: [
                SizedBox(
                    height: 100,
                    child: Image(image: AssetImage("images/deshtv.png"))),
                SizedBox(height: 10,),
                Text("Dish Tv",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red)),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey.shade100,
            child: const Column(
              children: [
                SizedBox(
                    height: 100,
                    child: Image(image: AssetImage("images/mtnl.png"))),
                SizedBox(height: 10,),
                Text("MTNL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red)),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey.shade100,
            child: const Column(
              children: [
                SizedBox(
                    height: 100,
                    child: Image(image: AssetImage("images/sun.png"))),
                SizedBox(height: 10,),
                Text("Sun Direct",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey.shade100,
            child: const Column(
              children: [
                SizedBox(
                    height: 100,
                    child: Image(image: AssetImage("images/tata.png"))),
                SizedBox(height: 10,),
                Text("TATA Play",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey.shade100,
            child: const Column(
              children: [
                SizedBox(
                    height: 100,
                    child: Image(image: AssetImage("images/d2h.png"))),
                SizedBox(height: 10,),
                Text("Videocon D2h ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
