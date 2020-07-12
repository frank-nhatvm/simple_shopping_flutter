import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simpleshoppingflutter/CartPage.dart';
import 'package:simpleshoppingflutter/CategoriesPage.dart';
import 'package:simpleshoppingflutter/LoginPage.dart';
import 'package:simpleshoppingflutter/alums/AlbumsList.dart';
import 'package:simpleshoppingflutter/models/CartModel.dart';


void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:  (context) => CartModel(),)
      ],
      child: MaterialApp(

        title: 'Shopping App',
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/category': (context) => CategoriesPage(),
          '/cart': (context) => CartPage(),
          '/albums_list': (context) => AlbumsList()
        },
      ),
    );

}

}
