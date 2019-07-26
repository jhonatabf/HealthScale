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
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text("Health Scale",
          style: TextStyle(
              color: Colors.cyan[400],),),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.home, color: Colors.grey[400],), onPressed: () {},)
        ],),
        backgroundColor: Colors.grey[100],
        body: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(8.0),),
          Text("Escala MEWS", 
            style: TextStyle(
              color: Colors.grey[800],),),
        ],),
    );
    return scaffold;
  }
}