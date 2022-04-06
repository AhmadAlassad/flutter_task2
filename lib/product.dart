import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_2/product_model.dart';

class Product extends StatelessWidget {
  const Product(this.product, {Key? key}) : super(key: key);
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color((random.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
        borderRadius: BorderRadius.all(Radius.circular(20)) 
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(

              children: [
                Text(
                  product.title,
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  product.subTitle,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded( child:
                    Icon(Icons.shopping_cart)
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              product.price,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
