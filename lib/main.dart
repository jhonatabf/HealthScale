import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:health_scale/pages.dart';
import 'package:health_scale/style.dart';
import './scales.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL() async {
  const url = 'https://linkedin.com/in/jhonatareboucas';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

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
          iconTheme: IconThemeData(
            color: Colors.grey[700],
          ),
          backgroundColor: Colors.white),
      backgroundColor: Colors.grey[100],
      body: base(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Jhonata Rebouças"),
              accountEmail: Text("jhonatareboucas@gmail.com"),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "Jh",
                  style: TextStyle(fontSize: 40.0, color: Colors.green),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Sobre o desenvolvedor'),
            ),
            ListTile(
              subtitle: Text.rich(
                TextSpan(text: sobre, style: selectEscalasTextSty, children: <TextSpan>[
                  TextSpan(text: "LinkedIn", style: TextStyle(color: Colors.green)),
                ],),
              ),
              onTap: () {
                _launchURL();
              },
            ),
            Divider(),
            ListTile(
              title: Text('Sobre o aplicativos'),
            ),
            ListTile(
              subtitle: Text(sobreApp, style: selectEscalasTextSty),
            ),
            Divider(),
          ],
        ),
      ),
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

//Variaveis
String sobre =
    "Analista de programação especialista em saúde. Desenvolve projetos voltados a área de interoperabilidade (HL7 v2, Fhir, CDA entre outros), flutter, web e outras atividades que tenham foco a melhoria na saúde da população. ";
String sobreApp =
    "Quanto mais pessoas utilizarem o app, mais teremos atualizações. Além das escalas atuais, estaremos sempre incluindo novas e você pode até solicitar a inclusão através do e-mail acima";
