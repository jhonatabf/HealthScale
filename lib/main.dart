import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:health_scale/pages.dart';
import 'package:health_scale/info/braden.dart';
import './scales.dart';

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
  
 String dropdownValue = 'Baixo';

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
                'Gostou do nosso APP? Temos a intenção de deixa-lo ainda melhor com novas escalas! Para você ajudar é bem simples, basta baixar e indicar aos seus amigos e o melhor é que não se paga nada por isso.',
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
                int item = index;
                return Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Color(0xFFFFDDDDDD),
                      ),
                    ),
                  ),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => escalas(item)),
                      );
                    },
                    leading: Icon(
                      Icons.content_copy,
                      color: coresincone[index],
                      size: 30.0,
                    ),
                    title: Text(titulos[index].toString(),
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      subtitulos[index].toString(),
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    }

Widget escalas(item) {
  var scaffold = Scaffold(
    appBar: AppBar(
      title: Text(
        "Health Scale - " + titulos[item],
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: coresincone[item],
    ),
    backgroundColor: Colors.grey[100],
    body: PageScale(item),
  );
  return scaffold;
}
}