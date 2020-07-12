import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simpleshoppingflutter/models/CartModel.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cartModel = Provider.of<CartModel>(context);
    var message = '';
    int size = cartModel.cartItems;
    if (size == 0) {
      message = 'The cart is empty';
    } else {
      message = 'There are $size in cart';
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: FlatButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          FlatButton(
            child: Text('Back'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
