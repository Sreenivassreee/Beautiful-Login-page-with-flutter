import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
var user,pass;
NextPage({Key key,this.user,this.pass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Data"),
        
      ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,

         children: <Widget>[
           Text(user, style: TextStyle(fontSize: 20),),
           Text(pass, style: TextStyle(fontSize: 20),),

         ],
       ),
     )
      
    );
  }
}