import 'package:flutter/material.dart';
class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: const Text("Report",style: TextStyle(color: Colors.white,fontSize: 25),),
        actions: const [
          SizedBox(
            child:Image(
              image: AssetImage(
                  "images/white_bell.png"),
            ),  ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: SizedBox(
              child:Image(
                image: AssetImage(
                    "images/i_wht.png"),
              ),  ),
          ),
        ],
      ),
      body:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey.shade50,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height:50,
                        child:Image(
                          image: AssetImage(
                              "images/mobile_th.png"),
                        ), ),

                      Text(
                        "Prepaid",
                      ),
                      Text(
                        "Report",
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  width: 90,
                  color: Colors.grey.shade50,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("images/water.png")),
                      SizedBox(height: 10,),
                      Text(
                        "DMT",
                      ),
                      Text(
                        "Report",
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 120,
                  width: 90,
                  color: Colors.grey.shade50,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height:50,
                        child:Image(
                          image: AssetImage(
                              "images/dth.png"),
                        ), ),

                      Text(
                        "DTH",
                      ),
                    ],
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 120,
                  width: 90,
                  color: Colors.grey.shade50,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height:50,
                        child:Image(
                          image: AssetImage(
                              "images/landline.png"),
                        ), ),

                      Text(
                        "AEPS",
                      ),
                      Text(
                        "Report",
                      ),


                    ],
                  ),
                ),
                Container(
                  height: 120,
                  width: 90,
                  color: Colors.grey.shade50,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("images/ic_electricity.png")),
                      SizedBox(height: 10,),
                      Text(
                        "Complaint",
                      ),
                      Text(
                        "Report",
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 120,
                  width: 90,
                  color: Colors.grey.shade50,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height:50,
                        child:Image(
                          image: AssetImage(
                              "images/gasl.png"),
                        ), ),

                      Text(
                        "Use Daybook ",
                      ),
                      Text(
                        "Report",
                      ),
                    ],
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
