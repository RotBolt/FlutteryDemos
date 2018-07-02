import 'package:flutter/material.dart';
import 'package:shoppe_extended/item_details.dart';
import 'Product.dart';
import 'dart:math';

void main()=> runApp(HomePage());



class HomePage extends StatelessWidget{

  final ShoppingList list = ShoppingList();

  void _select(SortMethod method){
    bool _isAlpha =false;
    if(method.title=='By Name'){
      _isAlpha=true;
    }
    list.toggleList(_isAlpha);
  }

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
                child: PopupMenuButton(
                  onSelected: _select,
                  itemBuilder: (BuildContext context){
                    return _sortChoices.map((SortMethod method){
                      return PopupMenuItem<SortMethod>(
                        value: method,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(method.icon),
                            ),
                            Text(method.title)
                          ],
                        ),
                      );
                    }).toList(growable: false);
                  },
                )
              )
            ],
            backgroundColor: Colors.red[600],
          ),

          body: list,
        )
    );
  }

}

class SortMethod{
  final String title;
  final IconData icon;

  const SortMethod({
    this.title,
    this.icon
 });
}

List<SortMethod> _sortChoices = const<SortMethod>[
  const SortMethod(title: 'By Name',icon: Icons.sort_by_alpha),
  const SortMethod(title: 'By Rating',icon: Icons.sort),
];

// ignore: must_be_immutable
class ShoppingList extends StatefulWidget {

  ShoppingListState _state;

  @override
  ShoppingListState createState() {
    _state= ShoppingListState();
    return _state;
  }

  void toggleList(bool isAlpha){
    _state.toggleList(isAlpha);
  }

}

class ShoppingListState extends State<ShoppingList> {
  bool _isSortedAlpha=false;
  bool _isSorted=false;
  List<Product> _shoppingList = _productList();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),

      child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(10.0),
          children: _shoppingList.map((Product product){
            return ShoppingItem(product: product,);
          }).toList(growable: false),
      ),
    );
  }

    void toggleList(bool isAlpha){
    setState(() {
      if(!isAlpha) {

        if (!_isSorted) {
          _shoppingList.sort(
                  (prod1, prod2) => prod1.rating.compareTo(prod2.rating)
          );
          _isSorted = !_isSorted;
          _isSortedAlpha=false;
        } else {
          _shoppingList = _productList();
          _isSorted = !_isSorted;
        }
      }else{
        if(!_isSortedAlpha){
          _shoppingList.sort(
              (prod1, prod2)=> prod1.name.compareTo(prod2.name)
          );
          _isSortedAlpha=!_isSortedAlpha;
          _isSorted=false;
        }else{
          _shoppingList=_productList();
          _isSortedAlpha=!_isSortedAlpha;
        }
      }
    });


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


List<Product> _productList(){
  List<Product> faker= [
    Product(
        name: "Blue Shirt",
        imageUrl: "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
        rating: 4.2
    ),

    Product(
        name: "Red Shirt",
        imageUrl: "https://assets.abfrlcdn.com/img/app/product/8/85181-250173-large.jpg",
        rating: 4.5
    ),

    Product(
        name: "Black Shirt",
        imageUrl: "https://assets.myntassets.com/h_240,q_90,w_180/v1/assets/images/2127876/2017/11/23/11511431472633-Roadster-Men-Black-Regular-Fit-Solid-Casual-Shirt-8801511431472500-1_mini.jpg",
        rating: 4.7
    ),
    Product(
        name: "Green Shirt",
        imageUrl: "https://static1.jassets.com/p/See-Designs-Green-Solid-Casual-Shirt-9267-848157-1-pdp_slider_m.webp",
        rating: 4.5
    ),

    Product(
        name: "Purple Shirt",
        imageUrl: "https://5.imimg.com/data5/YD/FK/MY-25516998/mens-formal-shirts-500x500.jpg",
        rating: 4.1
    ),
  ];

  List<Product> dispList = new List();
  var rand = new Random();
  for(int i =0 ;i<300;i++){
    dispList.add(faker[rand.nextInt(faker.length-1)]);
  }

  return dispList;
}

