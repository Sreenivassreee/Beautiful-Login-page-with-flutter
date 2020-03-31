import 'package:flutter/material.dart';
import 'NextPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var user =  TextEditingController();
  var pass =  TextEditingController();
var userName,password;




void submit(){
  setState(() {
  
    userName=user.text;
    password=pass.text;
  });
  Navigator.push(
    
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => NextPage(user:userName,pass:password)));
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/1223.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset("assets/123.png",
                   
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Form(
                            child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: user,
                              decoration: InputDecoration(
                                  labelText: "UserName",
                                  icon: const Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: const Icon(Icons.verified_user))),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextFormField(
                                controller: pass,
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    icon: const Padding(
                                        padding:
                                            const EdgeInsets.only(top: 15.0),
                                        child: const Icon(Icons.lock))),
                                keyboardType: TextInputType.text,
                                obscureText: true),
                            SizedBox(
                              height: 30,
                            ),
                            MaterialButton(
                                onPressed: () {
                                  submit();
                                  
                                },
                                color: Colors.red,
                                splashColor: Colors.white,
                                height: 50,
                                minWidth: 120,
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ))
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
