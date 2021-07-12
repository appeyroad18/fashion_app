import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'login_screen.dart';
import 'join_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion App',
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          )
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Background(
        imagePath: 'image/background.jpg',
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Login(

                ),
                Container(
                  height: 100,
                  width: 100,
                ),
                Join(

                )
              ],
            ),
          ),
        )
      );
  }
}

class Background extends StatelessWidget {

  final Widget child;
  final String imagePath;

  Background({required this.child, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          )
      ),
      child: child,
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        height: 100,
        minWidth: 160,
        onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
        return LoginScreen();
      }));
    }, child: Text("Login", style: TextStyle(fontSize: 40),));
  }
}

class Join extends StatefulWidget {
  const Join({Key? key}) : super(key: key);

  @override
  _JoinState createState() => _JoinState();
}

class _JoinState extends State<Join> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        height: 100,
        minWidth: 160,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return JoinScreen();
          }));
    }, child: Text("Join", style: TextStyle(fontSize: 40)));
  }
}

