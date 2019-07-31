import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

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
  final titulos = ['Braden', 'Braden Q', 'ECA (SCP)', 'Flebite', 'MEWS', 'NRS-2002', 'PEWS', 'TISS-28'];
  final subtitulos = ['Risco para Úlcera por Pressão', 'Risco para Úlcera por Pressão Pediátrico', 'Sistema de Classificação de Pacientes', 'Escala de Classificação de Flebite', 'Escore Alerta Precose', 'Protocolo de Risco Nutricional', 'Escore Alerta Precose Pediátrico', 'Therapeutic Intervention Scoring'];
  final coresincone = [Colors.orange, Colors.red, Colors.teal, Colors.brown, Colors.cyan, Colors.green, Colors.purple, Colors.pink[200]];
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text(
          "Health Scale",
          style: TextStyle(
            color: Colors.grey[700],
          ),
        ),
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
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at scelerisque nisi, vitae convallis diam. Quisque augue mi, vestibulum at fringilla vitae, feugiat non libero. Proin dictum commodo massa',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.fromLTRB(14, 20, 12, 5),
          child: Text(
            "ESCALAS DISPONÍVEIS",
            style: TextStyle(color: Colors.grey[600]),
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.0,
                color: Color(0xFFFFDDDDDD),
              ),
            ),
          ),
        ),
        Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: titulos.length,
          itemBuilder: (context, index) {
            return
            Container(
            decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Color(0xFFFFDDDDDD),),
            ),),
            child: ListTile(
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => braden()),
            );
          },
              leading: Icon(
                Icons.content_copy,
                color: coresincone[index],
                size: 30.0,
              ),
              title: Text(titulos[index].toString(),
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold)),
              subtitle: Text(
                subtitulos[index].toString(),
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),); 
          },
        ),),
      ],
    );
  }

  Widget braden(){
    return Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.fromLTRB(14, 20, 12, 5),
          child: Text(
            "Escala Braden",
            style: TextStyle(color: Colors.grey[600]),
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.0,
                color: Color(0xFFFFDDDDDD),
              ),
            ),
          ),
    );
  }
}
