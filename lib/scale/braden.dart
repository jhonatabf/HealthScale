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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        /* Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          padding: const EdgeInsets.all(10),
          color: Colors.grey[200],
          child: Text(
            descricoes[this.item],
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.justify,
          ),
        ), */
        Expanded(
          child: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 20, 12, 5),
                  child: Text(
                    "PERCEPÇÃO SENSORIAL",
                    style: labelEscalasTextSty,
                  ),
                  /* decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Color(0xFFFFDDDDDD),
                      ),
                    ),
                  ), */
                ),
                Divider(),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    _lbDesconforto,
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
                    value: _reacaoDesconforto == null
                        ? null
                        : reacaoDesconforto[_reacaoDesconforto],
                    items: reacaoDesconforto.map((String value) {
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
                        _reacaoDesconforto = reacaoDesconforto.indexOf(value);
                      });
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    _lbUmidade,
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
                    value: _fatorUmidade == null
                        ? null
                        : fatorUmidade[_fatorUmidade],
                    items: fatorUmidade.map((String value) {
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
                        _fatorUmidade = fatorUmidade.indexOf(value);
                        //print(_fatorUmidade);
                      });
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    _lbAtividade,
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
                    value: _atividadeFisica == null
                        ? null
                        : atividadeFisica[_atividadeFisica],
                    items: atividadeFisica.map((String value) {
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
                        _atividadeFisica = atividadeFisica.indexOf(value);
                        //print(_atividadeFisica);
                      });
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    _lbMobilidade,
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
                    value: _mobilidade == null ? null : mobilidade[_mobilidade],
                    items: mobilidade.map((String value) {
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
                        _mobilidade = mobilidade.indexOf(value);
                        //print(_mobilidade);
                      });
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    _lbNutricao,
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
                    value: _nutricao == null ? null : nutricao[_nutricao],
                    items: nutricao.map((String value) {
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
                        _nutricao = nutricao.indexOf(value);
                        //print(_nutricao);
                      });
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                  child: Text(
                    _lbCisalhamento,
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
                    value: _cisalhamento == null
                        ? null
                        : cisalhamento[_cisalhamento],
                    items: cisalhamento.map((String value) {
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
                        _cisalhamento = cisalhamento.indexOf(value);
                        //print(_cisalhamento);
                      });
                    },
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              informacoes();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: botaoOut,
                                child: Text(_lbBotaoInfo,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.green),
                                    textAlign: TextAlign.center),
                              ),
                            ))),
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              calcular(
                                  _reacaoDesconforto,
                                  _fatorUmidade,
                                  _atividadeFisica,
                                  _mobilidade,
                                  _nutricao,
                                  _cisalhamento);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: botao,
                                child: Text(_lbBotaoCalculo,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                    textAlign: TextAlign.center),
                              ),
                            )))
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }

  //lógica

  void calcular(
      desconforto, umidade, atividade, mobilidade, nutricao, cisalhamento) {
    if (desconforto != null &&
        umidade != null &&
        atividade != null &&
        mobilidade != null &&
        nutricao != null &&
        cisalhamento != null) {
      int calculo;

      Color corResultado;

      setState(() {
        calculo = (desconforto +1) +
            (umidade +1) +
            (atividade +1) +
            (mobilidade +1) +
            (nutricao +1) +
            (cisalhamento +1);

        if (calculo >= 17) {
          _resultado = "Risco Nulo";

          corResultado = Colors.green;
        } else if (calculo >= 15 && calculo <= 16) {
          _resultado = "Risco Leve";
          corResultado = Colors.blue;
        } else if (calculo >= 12 && calculo <= 14) {
          _resultado = "Risco Moderado";
          corResultado = Colors.orange;
        } else if (calculo >= 10 && calculo <= 11) {
          _resultado = "Risco Alto";
          corResultado = Colors.red[300];
        } else if (calculo <= 9) {
          _resultado = "Risco Muito Alto";
          corResultado = Colors.red;
        }
      });

      Widget okButton = FlatButton(
        child: Text(
          "fechar",
          style: TextStyle(color: linkEscalasSty),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
      AlertDialog alert = AlertDialog(
        title: Text("Resultado da escala " + titulos[item]),
        content: Text.rich(
          TextSpan(text: "Pontos: ", children: <TextSpan>[
            TextSpan(
                text: calculo.toString() + "\n\n",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: "O paciente possui um "),
            TextSpan(
                text: _resultado.toString(),
                style: TextStyle(
                    color: corResultado, fontWeight: FontWeight.bold)),
            TextSpan(text: " de desenvolver uma úlcera por pressão"),
          ]),
        ),
        actions: [
          okButton,
        ],
      );
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    } else {
      showToast(_toastPreenchimento,
          duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
    }
  }

  void informacoes() {
    Widget okButton = FlatButton(
      child: Text(
        "fechar",
        style: TextStyle(color: linkEscalasSty),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text("Informacoes sobre a escala " + titulos[item]),
      content: Text(infoBraden),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

//Variáveis

  final int item;
  _PageState(this.item);
  int _reacaoDesconforto;
  int _fatorUmidade;
  int _atividadeFisica;
  int _mobilidade;
  int _nutricao;
  int _cisalhamento;
  String _resultado = "";

  String _lbDesconforto =
      "Qual a capacidade de reação significativa ao desconforto?";
  String _lbUmidade = "Qual o nível de exposição da pele a umidade?";
  String _lbAtividade = "Qual o nível de atividade física?";
  String _lbMobilidade = "Como está a mobilidade da pessoa?";
  String _lbNutricao = "Como está a alimentação?";
  String _lbCisalhamento = "Existe problema com o cisalhamento?";
  String _toastPreenchimento = "Primeiro informe todos os campos da avaliação";
  String _lbBotaoInfo = "Informações";
  String _lbBotaoCalculo = "Calcular Escala";
  String pngCalculadora = 'images/png/calculator-solid.png';

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
}
