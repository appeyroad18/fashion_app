import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [LoginID(),
            Container(
              height: 100,
            ),
            LoginPassword(),
            Container(
              height: 100,
            ),
            Loginbutton(),
          ],
        )
      ),
    );
  }
}


class LoginID extends StatefulWidget {
  const LoginID({Key? key}) : super(key: key);

  @override
  _LoginIDState createState() => _LoginIDState();
}

class _LoginIDState extends State<LoginID> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: [
          Text("ID", style: TextStyle(color: Colors.black),),
          TextField(
              enabled: true,
              decoration: InputDecoration(
                  disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  )
              )
          )
        ],
      ),
    );
  }
}


class LoginPassword extends StatefulWidget {
  const LoginPassword({Key? key}) : super(key: key);

  @override
  _LoginPasswordState createState() => _LoginPasswordState();
}

class _LoginPasswordState extends State<LoginPassword> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: [
          Text("Password", style: TextStyle(color: Colors.black),),
          TextField(
              enabled: true,
              decoration: InputDecoration(
                  disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  )
              )
          )
        ],
      ),
    );
  }
}

class Loginbutton extends StatefulWidget {
  const Loginbutton({Key? key}) : super(key: key);

  @override
  _LoginbuttonState createState() => _LoginbuttonState();
}

class _LoginbuttonState extends State<Loginbutton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){

    }, child: Text("Login"));
  }
}
