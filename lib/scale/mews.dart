import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_scale/scales.dart';
import 'package:health_scale/style.dart';
import 'package:toast/toast.dart';

class PageMews extends StatefulWidget {
  final int item;
  PageMews(this.item) : super();
  @override
  _PageState createState() => _PageState(item);
}

class _PageState extends State<PageMews> {
  final int item;
  _PageState(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          padding: const EdgeInsets.all(10),
          color: Colors.grey[200],
          child: Text(
            descricoes[this.item],
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.justify,
          ),
        ),
         Expanded(
          child: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 20, 12, 5),
                  child: Text(
                    "PARÂMETROS FISIOLÓGICOS",
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
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    _lbRespiratorio,
                    style: labelEscalasTextSty,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 5, 14, 5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: new Text(
                      'Selecione',
                      style: TextStyle(color: textoDanger),
                    ),
                    style: selectEscalasTextSty,
                    value: _frequenciaRespiratoria == null
                        ? null
                        : frequenciaRespiratoria[_frequenciaRespiratoria],
                    items: frequenciaRespiratoria.map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(
                          value,
                          style: TextStyle(color: textoSuccess),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _frequenciaRespiratoria = frequenciaRespiratoria.indexOf(value);
                      });
                    },
                  ),
                ),
                 Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    _lbSaturacaoOxigenio,
                    style: labelEscalasTextSty,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 5, 14, 5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: new Text(
                      'Selecione',
                      style: TextStyle(color: textoDanger),
                    ),
                    style: selectEscalasTextSty,
                    value: _saturacaoOxigenio == null
                        ? null
                        : saturacaoOxigenio[_saturacaoOxigenio],
                    items: saturacaoOxigenio.map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(
                          value,
                          style: TextStyle(color: textoSuccess),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _saturacaoOxigenio = saturacaoOxigenio.indexOf(value);
                      });
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    _lbTemperatura,
                    style: labelEscalasTextSty,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 5, 14, 5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: new Text(
                      'Selecione',
                      style: TextStyle(color: textoDanger),
                    ),
                    style: selectEscalasTextSty,
                    value: _temperatura == null
                        ? null
                        : oxigencioSuplementar[_temperatura],
                    items: temperatura.map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(
                          value,
                          style: TextStyle(color: textoSuccess),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _temperatura = temperatura.indexOf(value);
                      });
                    },
                  ),
                ),
                 ]
            ),
          ),
         ),
      ],
    );
  }
}

//Variaveis
String _lbRespiratorio = "Frequencia respiratória";
String _lbSaturacaoOxigenio = "Saturação do Oxigênio";
String _lbOxigencioSuplementar = "Uso de O2 suplementar";
String _lbTemperatura = "Temperatura";

int _frequenciaRespiratoria;
int _saturacaoOxigenio;
int _oxigencioSuplementar;
int _temperatura;

  var frequenciaRespiratoria = <String>[
    'Maior ou igual à 25',
    'Entre 21 e 24',
    'Entre 12 e 20',
    'Entre 09 e 11',
    'Menor ou igual à 8'
  ];
  var saturacaoOxigenio = <String>[
    'Maior ou igual à 96',
    'Entre 94 e 95',
    'Entre 92 e 93',
    'Menor ou igual à 91'
  ];
  var oxigencioSuplementar = <String>[
    'Sim',
    'Não'
  ];
  var temperatura = <String>[
    'Maior ou igual à 39.1',
    'Entre 38.1 e 39',
    'Entre 36.1 e 38',
    'Entre 35.1 e 36',
    'Menor ou igual à 35'
  ];
