import 'package:flutter/material.dart';
import 'package:recharge_setu/app_text.dart';
const List<String> list = <String>['Select Status', 'Simple', 'Normal', 'Hard'];


class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Comment",style: Text_Style.App,),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          const Row(
            children: [
              Text(
                "Transaction Id",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                child: SizedBox(
                  width: 350,
                  child: TextField(
                    autofocus: true,
                    cursorColor: Colors.red,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          //width: 1.5,
                        ),
                      ),

                      //********Focus border like hover******************8
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red)),
                      hintText: "Enter Number",
                      hintStyle: const TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20,),
          const Row(
            children: [
              Text(
                "Select Issue",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: DropdownButtonExample(),
                  )),
            ],
          ),
          const SizedBox(height: 300,),
          Container(
            width: 300,
            height: 50,
            color: Colors.red,

            child: const Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
          )

        ],
      ),
    );
  }
}


class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}
class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Padding(
        padding: EdgeInsets.only(left: 150),
        child: Icon(Icons.arrow_drop_down,color: Colors.red,size: 30,),
      ),
      elevation: 16,
      style: const TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),
      underline: Container(
        height: 1,
        color: Colors.white,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });

      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}