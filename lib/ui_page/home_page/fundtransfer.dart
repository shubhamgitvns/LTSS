import 'package:flutter/material.dart';
class Fund_Transfer extends StatefulWidget {
  const Fund_Transfer({super.key});

  @override
  State<Fund_Transfer> createState() => _Fund_TransferState();
}

class _Fund_TransferState extends State<Fund_Transfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Fund Transfer",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text("Maa Mobile Store",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
              ],
            ),
            const SizedBox(height: 10,),
            const Row(
              children: [
                Text("1234567891",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
              ],
            ),
            const SizedBox(height: 20,),
            const Row(
              children: [
                Text("Remark",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),

              ],
            ),
            const SizedBox(height: 5,),
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
                        hintText: "Remark",
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
                Text("Pin Password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),

              ],
            ),
            const SizedBox(height: 5,),
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
                        hintText: "pin Password",
                        hintStyle: const TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50,),
            const Row(
              children: [
                Text("Transferable Amount Is ₹ 2020.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
              ],
            ),

            const SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(10)
                  ),
                    child: const Center(child: Text("Cancel",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),))),
                const SizedBox(width: 20,),
                Container(
                  height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.red,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Text("Transfer",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)))),
              ],
            )

          ],
        ),
      ),
    );
  }
}
