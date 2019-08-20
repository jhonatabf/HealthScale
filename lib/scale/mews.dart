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
            child: Column(children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(14, 20, 12, 5),
                child: Text(
                  "PARÂMETROS FISIOLÓGICOS",
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
                      _frequenciaRespiratoria =
                          frequenciaRespiratoria.indexOf(value);
                          print(_frequenciaRespiratoria);
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
                      print(_saturacaoOxigenio);
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
                  value:
                      _temperatura == null ? null : temperatura[_temperatura],
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
                      print(_temperatura);
                    });
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                child: Text(
                  _lbOxigencioSuplementar,
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
                  value: _oxigencioSuplementar == null
                      ? null
                      : oxigencioSuplementar[_oxigencioSuplementar],
                  items: oxigencioSuplementar.map((String value) {
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
                      _oxigencioSuplementar =
                          oxigencioSuplementar.indexOf(value);
                          print(_oxigencioSuplementar);
                    });
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                child: Text(
                  _lbNivelConsciencia,
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
                  value: _nivelConsciencia == null
                      ? null
                      : nivelConsciencia[_nivelConsciencia],
                  items: nivelConsciencia.map((String value) {
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
                      _nivelConsciencia = nivelConsciencia.indexOf(value);
                      print(_nivelConsciencia);
                    });
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                child: Text(
                  _lbFrequenciaCardiaca,
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
                  value: _frequenciaCardiaca == null
                      ? null
                      : frequenciaCardiaca[_frequenciaCardiaca],
                  items: frequenciaCardiaca.map((String value) {
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
                      _frequenciaCardiaca = frequenciaCardiaca.indexOf(value);
                     print(_frequenciaCardiaca);
                    });
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(14, 14, 12, 0),
                child: Text(
                  _lbPressaoSistolica,
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
                  value: _pressaoSistolica == null
                      ? null
                      : pressaoSistolica[_pressaoSistolica],
                  items: pressaoSistolica.map((String value) {
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
                      _pressaoSistolica = pressaoSistolica.indexOf(value);
                      print(_pressaoSistolica);
                    });
                  },
                ),
              ),Row(
                  children: [
                    Expanded(
                      child:GestureDetector(
                        onTap: (){
                          informacoes();
                        },
                        child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: botaoOut,
                        child: Text(_lbBotaoInfo,
                            style:
                                TextStyle(fontSize: 20, color: Colors.green),
                            textAlign: TextAlign.center),
                      ),
                    ))),
                    Expanded(
                      child:GestureDetector(
                        onTap: (){
                          calcular(_nivelConsciencia, _temperatura, _frequenciaCardiaca, _pressaoSistolica, _frequenciaRespiratoria, _oxigencioSuplementar, _saturacaoOxigenio);
                        },
                        child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: botao,
                        child: Text(_lbBotaoCalculo,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.center),
                      ),
                    )))
                  ],
                ),
            ]),
          ),
        ),
      ],
    );
  }
//Lógica

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }

  void calcular(
      nvlCons, temp, freqCardio, paSis, freqResp, satOxi, suplOxi) {
    if (nvlCons != null &&
        temp != null &&
        freqCardio != null &&
        paSis != null &&
        freqResp != null &&
        satOxi != null &&
        suplOxi != null) {
      int calculo;
      Color corResultado;
      int _alerta = 0;

      setState(() {
        
        if(nvlCons != 0){nvlCons = 3; _alerta = 1;}
        if(temp == 0){temp = 2;}else if (temp == 1 || temp == 3){temp = 1;}else if (temp == 2){temp = 0;}else if(temp == 4){temp = 3; _alerta = 1;}
        if(freqCardio == 0 || freqCardio == 5){freqCardio = 3; _alerta = 1;}else if (freqCardio == 1){freqCardio = 2;}else if (freqCardio == 2 || freqCardio == 4){freqCardio = 1;}else if(freqCardio == 3){freqCardio = 0;}
        if(paSis == 0 || paSis == 4){paSis = 3; _alerta = 1;}else if (paSis == 1){paSis = 0;}else if (paSis == 2){paSis = 1;}else if(paSis == 3){paSis = 2;}
        if(freqResp == 0 || freqResp == 4){freqResp = 3; _alerta = 1;}else if (freqResp == 1){freqResp = 2;}else if (freqResp == 2){freqResp = 0;}else if(freqResp == 3){freqResp = 1;}
        if(suplOxi != 0){suplOxi = 2;}

        calculo =  nvlCons +
            temp +
            freqCardio +
            paSis +
            freqResp +
            (satOxi -1) + suplOxi;

        if (calculo == 0) {
          _resultado = "A cada 12 horas";
          _resposta = "Continuar com a rotina de monitorização com o MEWS";

          corResultado = Colors.green;
        } else if ((calculo >= 1 && calculo <= 4) &&  _alerta != 1) {
          _resultado = "No mínimo a cada 4-6 horas";
          _resposta = "Enfermeiro(a) deve avaliar o paciente";

          corResultado = Colors.blue;
        } else if ((calculo >= 5 && calculo <= 6) || _alerta == 1) {
          _resultado = "Aumentar a frequência para no mínimo a cada hora";
          _resposta = "Enfermeiro(a) deve informar com urgência a equipe médica";

          corResultado = Colors.orange;
        } else if (calculo >= 7) {
          _resultado = "Monitorizacao contínua sempre que possível";
          _resposta = "Enfermeiro(a) deve informar urgentimente a equipe médica para avaliação; A equipe médica deve informar a equipe da UTI; Considere a tranferência para a UTI";

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
                text: calculo.toString()+ "\n\n",
                style: TextStyle(
                    fontWeight: FontWeight.bold)),
            TextSpan(text: "Frequência de controles: "),
            TextSpan(
                text: _resultado.toString()+"\n\n",
                style: TextStyle(
                    color: corResultado, fontWeight: FontWeight.bold)),
            TextSpan(text: _resposta),
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

  void informacoes(){
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

        content: Text(
          infoMews
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
  }

//Variaveis
  String _lbRespiratorio = "Frequencia respiratória";
  String _lbSaturacaoOxigenio = "Saturação do Oxigênio";
  String _lbOxigencioSuplementar = "Uso de O2 suplementar";
  String _lbTemperatura = "Temperatura";
  String _lbNivelConsciencia = "Nível de Consciência";
  String _lbFrequenciaCardiaca = "Frequência Cardiáca";
  String _lbPressaoSistolica = "PA Sistólica";
  String _toastPreenchimento = "Primeiro informe todos os campos da avaliação";
  String _lbBotaoInfo = "Informações";
  String _lbBotaoCalculo = "Calcular Escala";
  String _resultado = "";
  String _resposta = "";

  int _frequenciaRespiratoria;
  int _saturacaoOxigenio;
  int _oxigencioSuplementar;
  int _temperatura;
  int _nivelConsciencia;
  int _frequenciaCardiaca;
  int _pressaoSistolica;

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
  var oxigencioSuplementar = <String>['Sim', 'Não'];
  var temperatura = <String>[
    'Maior ou igual à 39.1',
    'Entre 38.1 e 39',
    'Entre 36.1 e 38',
    'Entre 35.1 e 36',
    'Menor ou igual à 35'
  ];
  var nivelConsciencia = <String>[
    'Alerta - Acordado',
    'Voz - Responde de alguma forma à voz',
    'Dor - Responde mesmo que involuntário',
    'Não responde'
  ];
  var frequenciaCardiaca = <String>[
    'Maior ou igual à 131',
    'Entre 111 e 130',
    'Entre 91 e 110',
    'Entre 51 e 90',
    'Entre 41 e 50',
    'Menor ou igua à 40'
  ];
  var pressaoSistolica = <String>[
    'Maior ou igual à 220',
    'Entre 111 e 219',
    'Entre 101 e 110',
    'Entre 91 e 100',
    'Menor ou igua à 90'
  ];
}
