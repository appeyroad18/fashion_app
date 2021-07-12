import 'package:flutter/material.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({Key? key}) : super(key: key);

  @override
  _JoinScreenState createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Joinname(),
            Container(
              height: 100,
            ),
            JoinAge(),
            Container(
              height: 100,
            ),
            Joinpage(),
            Container(
              height: 100,
            ),
            JoinPassword(),
            Container(
              height: 100,
            ),
            Joinbutton(),
          ],
        ),
      ),
    );
  }
}

class Joinpage extends StatefulWidget {
  const Joinpage({Key? key}) : super(key: key);

  @override
  _JoinpageState createState() => _JoinpageState();
}

class _JoinpageState extends State<Joinpage> {
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

class JoinPassword extends StatefulWidget {
  const JoinPassword({Key? key}) : super(key: key);

  @override
  _JoinPasswordState createState() => _JoinPasswordState();
}

class _JoinPasswordState extends State<JoinPassword> {
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

class Joinname extends StatefulWidget {
  const Joinname({Key? key}) : super(key: key);

  @override
  _JoinnameState createState() => _JoinnameState();
}

class _JoinnameState extends State<Joinname> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: [
          Text("Name", style: TextStyle(color: Colors.black),),
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


class JoinAge extends StatefulWidget {
  const JoinAge({Key? key}) : super(key: key);

  @override
  _JoinAgeState createState() => _JoinAgeState();
}

class _JoinAgeState extends State<JoinAge> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Age :", style: TextStyle(color: Colors.black),),
        IntrinsicWidth(
          child: Container(
            width: 50,
            child: TextField(
                enabled: true,
                decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    )
                )
            ),
          ),
        )
      ],
    );
  }
}

class Joinbutton extends StatefulWidget {
  const Joinbutton({Key? key}) : super(key: key);

  @override
  _JoinbuttonState createState() => _JoinbuttonState();
}

class _JoinbuttonState extends State<Joinbutton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Navigator.pop(context);
    }, child: Text("Join"));
  }
}
