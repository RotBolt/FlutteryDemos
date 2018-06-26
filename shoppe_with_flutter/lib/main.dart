import 'package:flutter/material.dart';
import 'shoppe_item.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Shoppe With Flutter' ,
      home: new ShoppingList(
        products: <Product>[
          new Product(name: 'Eggs'),
          new Product(name: 'Bread'),
          new Product(name: 'Ham')
        ],
      ),
    );
  }
}