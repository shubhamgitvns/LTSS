import 'package:flutter/material.dart';
class View_Plans extends StatefulWidget {
  const View_Plans({super.key});

  @override
  State<View_Plans> createState() => _View_PlansState();
}

class _View_PlansState extends State<View_Plans> {
  List<Product> products = [
    Product(price: 19, quantity: 'Data: 1GB| Validity: 1Day',validity: "Validity: N/A"),
    Product(price: 29,  quantity: 'Data: 2GB| Validity: 1Day',validity: "Validity: N/A"),
    Product(price: 65, quantity: 'Data: 4GB| Validity: Til Your Existing Page',validity: "Validity: N/A"),
    Product(price: 129, quantity: 'Data: 12GB| Validity: Til Your Existing Page',validity: "Validity: N/A"),
    Product(price: 209, quantity: 'Calls: Unlimited| Data: 12GB| Validity: Til Your Existing Page',validity: "Validity: N/A"),
    Product(price: 239, quantity: 'Calls: Unlimited| Data: 12GB| Validity: 28Days| Sms: 100',validity: "Validity: N/A"),
    Product(price: 299, quantity: 'Calls: Unlimited| Data: 12GB| Validity: 28Days| Sms: 100',validity: "Validity: N/A"),
    Product(price: 699, quantity: 'Calls: Unlimited| Data: 12GB| Validity: 28Days| Sms: 100',validity: "Validity: N/A"),
  ];
  @override
  Widget build(BuildContext context) {
final TextStyle style= TextStyle(color: Colors.white);
    return DefaultTabController(
        length:4,
      child: Scaffold(

        appBar: AppBar(
            automaticallyImplyLeading: false,
          // backgroundColor: Colors.red,
          title:Text(" Prepaid",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
          bottom: TabBar(

            tabs: [
              Tab(text: "Top Up",),
              Tab(text: "2G",),
              Tab(text: "Fullet",),
              Tab(text: "3G/4G",),
            ],
          )

        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) => Card(
              child: SizedBox(
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red)
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("₹${products[index].price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                     subtitle: Text(products[index].validity,style: TextStyle(color: Colors.red),),
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SizedBox(
                          width: 200,
                          // height: 15,
                          child: SingleChildScrollView(child: Text('${products[index].quantity}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)))),
                    ),
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}

class Product{
  int price;
  String quantity;
  String validity;

  Product({required this.price,required this.quantity, required this.validity});
}