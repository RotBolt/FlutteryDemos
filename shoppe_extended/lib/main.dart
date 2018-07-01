import 'package:flutter/material.dart';
import 'package:shoppe_extended/item_details.dart';
import 'Product.dart';

void main()=> runApp(HomePage());

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Shoppe'),
            centerTitle: true,
            actions: <Widget>[

              Container(
                margin:EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.sort
                ),
              )
            ],
            backgroundColor: Colors.red[600],
          ),

          body: ShoppingList(),
        )
    );
  }

}

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black54,
          width: 5.0
        ),
      ),
      child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(10.0),
          children: _productList().map((Product product){
            return ShoppingItem(product: product,);
          }).toList(growable: false),
      ),
    );
  }


  List<Product> _productList(){
    return [
      Product(
        name: "Blue Shirt",
        imageUrl: "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
        rating: 4.2
      ),

      Product(
          name: "Blue Shirt",
          imageUrl: "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
          rating: 4.2
      ),

      Product(
          name: "Blue Shirt",
          imageUrl: "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
          rating: 4.2
      ),
      Product(
          name: "Blue Shirt",
          imageUrl: "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
          rating: 4.2
      ),

      Product(
          name: "Blue Shirt",
          imageUrl: "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
          rating: 4.2
      ),

      Product(
          name: "Blue Shirt",
          imageUrl: "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
          rating: 4.2
      ),

      Product(
          name: "Blue Shirt",
          imageUrl: "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
          rating: 4.2
      ),

      Product(
          name: "Blue Shirt",
          imageUrl: "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
          rating: 4.2
      ),

    ];
  }
}


class ShoppingItem extends StatelessWidget {

  final Product product;
  ShoppingItem({this.product});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            imageItem(product.imageUrl),
            nameItem(product.name),
            ratingItem(product.rating),
          ],
        ),
      ),
      onTap:(){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context){
            return ShoppingItemDetails(
              itemName: product.name,
              itemUrl: product.imageUrl,
              itemRating: product.rating,
            );
          })
        );
      }
    );
  }



  Widget imageItem(String url){
    return Container(
      child: Image.network(
          '$url',
        fit: BoxFit.cover,
      ),
        color: Colors.blue
    );
  }

  Widget nameItem(String name){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        constraints: BoxConstraints.expand(
          height: 50.0
        ),
        color: Colors.black54,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
                '$name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget ratingItem(double rating){
    return Align(
      alignment: Alignment.topRight,
      child: Container(
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.horizontal(
            left:Radius.circular(20.0)
        )
      ) ,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start ,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.star,
                color: Colors.amber,
              ),

              SizedBox(
                width: 8.0,
              ),
              Text(
                  '$rating',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }

}

