import 'package:flutter/material.dart';
import 'package:task_2/product.dart';
import 'package:task_2/product_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text("shoes shop"),
          backgroundColor: Colors.grey[300],
          elevation: 0,
          foregroundColor: Colors.black,
          actions: [
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.money),
                label: Text("pay")),
            Container(
              child: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              margin: EdgeInsets.only(right: 20),
            )
          ],

          bottom: TabBar(
            padding: EdgeInsets.all(10),
              unselectedLabelColor: Colors.blue,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,),
              tabs:
              [
                Tab(text: "all"),
                Tab(text: "sports"),
                Tab(text: "men"),
                Tab(text: "women"),
              ]
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: ListView.builder(itemBuilder: (cont,index) => Product(products[index])
              , itemCount: 3),
        ),
      ),

    );
  }


  List<ProductModel> products = [
    new ProductModel("Nike Shoes","Nike",
        "","123.0\$"),
    new ProductModel("Sports Shoes","Nike",
        "","103.0\$"),
    new ProductModel("Sports Shoes","Nike",
        "","103.0\$"),
  ];
}
