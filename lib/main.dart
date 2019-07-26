import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Health Scale",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health Scale",),
        backgroundColor: Colors.cyan[400],
        actions: <Widget>[
          IconButton(icon: Icon(Icons.home), onPressed: () {},)
        ],),
    );
  }
}