import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

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
              color: Colors.grey[700],),),
        backgroundColor: Colors.white,
        //actions: <Widget>[
        //  IconButton(icon: Icon(Icons.home, color: Colors.grey[400],), onPressed: () {},)
        //],
        ),
        backgroundColor: Colors.grey[100],
        body: base(),
    );
    return scaffold;
  }
Widget base() {
      return Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            padding: const EdgeInsets.all(10),
            color: Colors.green[500],
            child: const Center(
                child: Text('Estamos tentando manter o aplicativo sem propaganda ou qualquer outro tipo de distração, o seu foco é a saúde então pedimos a sua ajuda para mante-lo assim e melhorar a aplicação ainda mais.',
                style: TextStyle(color: Colors.white), textAlign: TextAlign.justify,),
                ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.fromLTRB(14, 20, 12, 5),
            child: Text("ESCALAS DISPONÍVEIS",
            style: TextStyle(color: Colors.grey[600]),),
            decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Color(0xFFFFDDDDDD),),
            ),),
          ),
          Container(
            decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Color(0xFFFFDDDDDD),),
            ),),
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
            height: 60,
            child: const Center(child: Text('Escala Braden')),
          ),
          Container(
            decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Color(0xFFFFDDDDDD),),
            ),),
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
            height: 60,
            child: const Center(child: Text('Escala MEWS')),
          ),
        ],

      );
    }

}