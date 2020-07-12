
import 'package:flutter/foundation.dart';

class CartModel extends ChangeNotifier{

   int cartItems = 0;

  void increase(){
    cartItems++;
    notifyListeners();
  }

  void decrease(){
    cartItems--;
    if(cartItems < 0){
      cartItems = 0;
    }
    notifyListeners();
  }


}