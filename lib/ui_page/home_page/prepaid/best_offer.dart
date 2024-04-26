import 'package:flutter/material.dart';
class Best_Offer extends StatefulWidget {
  const Best_Offer({super.key});

  @override
  State<Best_Offer> createState() => _Best_OfferState();
}

class _Best_OfferState extends State<Best_Offer> {
  List<Product> products = [
  Product(price: 19, quantity: 'Data: 1GB| Validity: 1Day'),
    Product(price: 29,  quantity: 'Data: 2GB| Validity: 1Day'),
    Product(price: 65, quantity: 'Data: 4GB| Validity: Til Your Existing Page'),
    Product(price: 129, quantity: 'Data: 12GB| Validity: Til Your Existing Page'),
    Product(price: 209, quantity: 'Calls: Unlimited| Data: 12GB| Validity: Til Your Existing Page'),
    Product(price: 239, quantity: 'Calls: Unlimited| Data: 12GB| Validity: 28Days| Sms: 100'),
    Product(price: 299, quantity: 'Calls: Unlimited| Data: 12GB| Validity: 28Days| Sms: 100'),
    Product(price: 699, quantity: 'Calls: Unlimited| Data: 12GB| Validity: 28Days| Sms: 100'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Best Offers',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.red),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => Card(
            child: SizedBox(
              height: 100,
              child: ListTile(
                title: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red)
                      ),
                        child: Center(child: Text("₹${products[index].price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),))),
                  ],
                ),
                // subtitle: Text(products[index].quantity),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SizedBox(
                    width: 220,
                      // height: 15,
                      child: SingleChildScrollView(child: Text('${products[index].quantity}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)))),
                ),
              ),
            )
        ),
      ),
    );
  }
}

class Product{
  int price;
  String quantity;

  Product({required this.price,required this.quantity});
}