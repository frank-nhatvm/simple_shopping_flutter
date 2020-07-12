import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          FlatButton(
            color: Colors.blue,
            child: Text("Login"),
            onPressed: (){
              Navigator.pushNamed(context, '/category');
            },
          ),

          FlatButton(
            color: Colors.blue,
            child: Text("Go to Albums"),
            onPressed: (){
              Navigator.pushNamed(context, '/albums_list');
            },
          ),

        ],
      ),
    );
  }
}
