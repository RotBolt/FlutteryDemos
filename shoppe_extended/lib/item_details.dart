import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ShoppingItemDetails extends StatelessWidget{

  final String itemName;
  final String itemUrl;
  final double itemRating;


  ShoppingItemDetails({
     @required this.itemName,
     @required this.itemUrl,
    @required this.itemRating
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Item Details',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: ItemDetails(
          itemName: this.itemName,
          itemUrl: this.itemUrl,
          itemRating: this.itemRating,
        ),
        floatingActionButton: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: 1,
                child: Icon(
                    Icons.share,
                  color:  Colors.white,
                ),
                backgroundColor: Colors.redAccent,
                mini: true,
              ),
            ),

           Container(
             margin: EdgeInsets.only(bottom: 8.0),
             child: FloatingActionButton(
               heroTag: 0,
                  child: Icon(
                    Icons.shopping_cart,
                    color:  Colors.white,
                  ),
                  backgroundColor: Colors.redAccent,
                ),
           ),

          ],
        ),
      
      );
  }

}

class ItemDetails extends StatelessWidget {


  final String itemName;
  final String itemUrl;
  final double itemRating;


  ItemDetails({
    @required this.itemName,
    @required this.itemUrl,
    @required this.itemRating
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black54,
                width: 5.0
              )
            ),
            margin: EdgeInsets.only(top: 20.0),
            child: Image.network(
                "$itemUrl",
              fit: BoxFit.fitHeight,
              height: 240.0,
            ),
          ),

          Divider(),

          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    itemName,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.0
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$itemRating',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0
                  ),
                ),
              )
            ],
          ),

          Divider(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "The word linen is of West Germanic origin and cognate to the Latin name for the flax plant, linum, and the earlier Greek λινόν (linón). This word history has given rise to a number of other terms in English, most notably line, from the use of a linen (flax) thread to determine a straight line.[1] Many products are made of linen: aprons, bags, towels (swimming, bath, beach, body and wash towels), napkins, bed linens, tablecloths, runners, chair covers, and men's and women's wear.",

              style: TextStyle(
                fontSize: 15.0,
                color:  Colors.grey
              ),
            ),
          ),

          Divider(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Price : Rs. 12000',
              style: TextStyle(
                fontSize: 16.5,
                color: Colors.indigo
              ),
            ),
          )

        ],
      ),
    );
  }
}
