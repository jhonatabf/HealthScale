import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_scale/scales.dart';
import 'package:health_scale/style.dart';
import 'package:toast/toast.dart';

class PageBraden extends StatefulWidget {
  final int item;
  PageBraden(this.item) : super();
  @override
  _PageState createState() => _PageState(item);
}

class _PageState extends State<PageBraden> {
  final int item;
  _PageState(this.item);
  int _reacaoDesconforto;
  int _fatorUmidade;
  int _atividadeFisica;
  int _mobilidade;
  int _nutricao;
  int _cisalhamento;
  String _resultado = "";
  var reacaoDesconforto = <String>[
    'Completamente limitada',
    'Muito limitada',
    'Ligeiramente limitada',
    'Nenhuma limitação'
  ];
  var fatorUmidade = <String>[
    'Completamente úmida ou molhada',
    'Muito úmida ou molhada',
    'As vezes úmida ou molhada',
    'Nunca úmida ou molhada'
  ];
  var atividadeFisica = <String>[
    'Acamado',
    'Confinado ou restrito à cadeira',
    'Anda ocasionalmente',
    'Anda frequentemente'
  ];
  var mobilidade = <String>[
    'Completamente imobilizado',
    'Muito limitada',
    'Ligeiramente limitado',
    'Nenhuma limitação'
  ];
  var nutricao = <String>[
    'Muito pobre',
    'Provavelmente inadequada',
    'Adequada',
    'Excelente'
  ];
  var cisalhamento = <String>[
    'Problema',
    'Problema potencial',
    'Nenhum problema'
  ];

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }

  void calcular(desconforto_, umidade_, atividade_, mobilidade_, nutricao_,
      cisalhamento_) {
    int calculo;
    setState(() {
      calculo = desconforto_ +
          umidade_ +
          atividade_ +
          mobilidade_ +
          nutricao_ +
          cisalhamento_;
      if (calculo > 17) {
        _resultado = "Sem Risco";
      } else if (calculo >= 15 && calculo <= 16) {
        _resultado = "Risco Leve";
      } else if (calculo >= 12 && calculo <= 14) {
        _resultado = "Risco Moderado";
      } else if (calculo <= 11) {
        _resultado = "Risco Alto";
      }
    });
    Widget okButton = FlatButton(
      child: Text(
        "OK",
        style: TextStyle(color: corLinkSty),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Resultado da escala " + titulos[item]),
      content: Text(_resultado.toString()),
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
                    "PERCEPÇÃO SENSORIAL",
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
                    "Qual a capacidade de reação significativa ao desconforto?",
                    style: tituloSty,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 5, 14, 5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: new Text('Selecione'),
                    style: selecaoSty,
                    value: _reacaoDesconforto == null
                        ? null
                        : reacaoDesconforto[_reacaoDesconforto],
                    items: reacaoDesconforto.map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _reacaoDesconforto = reacaoDesconforto.indexOf(value);
                      });
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    "Qual o nível de exposição da pele a umidade?",
                    style: tituloSty,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 5, 14, 5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: new Text('Selecione'),
                    style: selecaoSty,
                    value: _fatorUmidade == null
                        ? null
                        : fatorUmidade[_fatorUmidade],
                    items: fatorUmidade.map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _fatorUmidade = fatorUmidade.indexOf(value);
                        print(_fatorUmidade);
                      });
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    "Qual o nível de atividade física?",
                    style: tituloSty,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 5, 14, 5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: new Text('Selecione'),
                    style: selecaoSty,
                    value: _atividadeFisica == null
                        ? null
                        : atividadeFisica[_atividadeFisica],
                    items: atividadeFisica.map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _atividadeFisica = atividadeFisica.indexOf(value);
                        print(_atividadeFisica);
                      });
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    "Como está a mobilidade da pessoa?",
                    style: tituloSty,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 5, 14, 5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: new Text('Selecione'),
                    style: selecaoSty,
                    value: _mobilidade == null ? null : mobilidade[_mobilidade],
                    items: mobilidade.map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _mobilidade = mobilidade.indexOf(value);
                        print(_mobilidade);
                      });
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    "Como está a alimentação?",
                    style: tituloSty,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 5, 14, 5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: new Text('Selecione'),
                    style: selecaoSty,
                    value: _nutricao == null ? null : nutricao[_nutricao],
                    items: nutricao.map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _nutricao = nutricao.indexOf(value);
                        print(_nutricao);
                      });
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    "Existe problema com o cisalhamento?",
                    style: tituloSty,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 5, 14, 5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: new Text('Selecione'),
                    style: selecaoSty,
                    value: _cisalhamento == null
                        ? null
                        : cisalhamento[_cisalhamento],
                    items: cisalhamento.map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _cisalhamento = cisalhamento.indexOf(value);
                        print(_cisalhamento);
                      });
                    },
                  ),
                ),
                const SizedBox(height: 40),
                RaisedButton(
                  onPressed: () {
                    //showAlertDialog(context);
                    if (_reacaoDesconforto != null &&
                        _fatorUmidade != null &&
                        _atividadeFisica != null &&
                        _mobilidade != null &&
                        _nutricao != null &&
                        _cisalhamento != null) {
                      calcular(
                          _reacaoDesconforto,
                          _fatorUmidade,
                          _atividadeFisica,
                          _mobilidade,
                          _nutricao,
                          _cisalhamento);
                    } else {
                      showToast("Primeiro informe os campos da avaliação",
                          duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
                    }
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                          child: Text('Calcular Escala',
                              style: TextStyle(fontSize: 20)),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
