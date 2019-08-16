import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_scale/style.dart';

class PageInfoBraden extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<PageInfoBraden> {
  @override
  Widget build(BuildContext context) {
    alerta() {
      Widget okButton = FlatButton(
        child: Text(
          "fechar",
          style: TextStyle(color: linkEscalasSty),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text("Informações sobre a escala braden"),
        content: Text.rich(
          TextSpan(text: "Não utilize a escala para tomada de decisões se você não for um profissional de saúde habilitado", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold), children: <TextSpan>[
            TextSpan(text: ""),
            TextSpan(text: " Todo restante vai aqui"),
          ]),
        ),
        actions: [
          okButton,
        ],
      );
      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    // TODO: implement build
    return null;
  }
}
