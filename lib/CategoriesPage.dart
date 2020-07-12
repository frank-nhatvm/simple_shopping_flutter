import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simpleshoppingflutter/models/CartModel.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var cartModel = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
        backgroundColor: Colors.yellow,
        actions: [
          FlatButton(
            child: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlatButton(
            color: Colors.lightBlue,
            child: Text(
              'Add to cart',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            onPressed: () {
              cartModel.increase();
            },
          ),
          FlatButton(
              color: Colors.redAccent,
              child: Text(
                'Remove',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              onPressed: () {
                cartModel.decrease();
              })
        ],
      ),
    );
  }
}
