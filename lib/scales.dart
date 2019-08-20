import 'package:flutter/material.dart';

final titulos = [
      'Braden',
      //'Braden Q',
      //'ECA (SCP)',
      //'Flebite',
      'MEWS',
      //'NRS-2002',
      //'PEWS',
      //'TISS-28'
    ];
    final subtitulos = [
      'Risco para Úlcera por Pressão',
      //'Risco para Úlcera por Pressão Pediátrico',
      //'Sistema de Classificação de Pacientes',
      //'Escala de Classificação de Flebite',
      'National Early Warning Score',
      //'Protocolo de Risco Nutricional',
      //'Escore Alerta Precose Pediátrico',
      //'Therapeutic Intervention Scoring'
    ];
    final coresincone = [
      Colors.orange,
      //Colors.red,
      //Colors.teal,
      //Colors.brown,
      Colors.cyan,
      //Colors.green,
      //Colors.purple,
      //Colors.pink[200]
    ];
    final paginas = [
      'braden',
      //'bradenq',
      //'SCP',
      //'frebite',
      'mews',
      //'nrs',
      //'pews',
      //'tiss'
    ];
    final descricoes = [
      'Escala utilizada para correta prevenção e tratamento de lesões por pressão em hospitais. É bastante utilizado em UTIs por conta da longa esposição do paciente a uma unica posição.',
      //'Identificação e classificação de pacientes em grupos de cuidados ou categorias, e a quantificação destas categorias como uma medida dos esforços de enfermagem requeridos - "GIOVANNETTI (1979)"',
      'Escala de alerta com finalidade de identificar de forma precoce sinais de deterioração do quadro clínico do paciente através da pontuação de alguns sinais vitais.'
    ];
    final String infoBraden = "A escala Braden foi desenvolvida pela professora e enfermeira Barbara Braden e Nancy Bergstrom em 1988 e é a ferramenta mais usada no mundo para prever o risco de úlcera por pressão. \n\n"
    "A ferramenta é clinicamente validada e permite ao enfermeiro avaliar o risco através de análise de seis critérios que podem pontuar de 1 a 4 pontos tendo uma somatória final de 6 a 23. O risco é inversamente proporcional ao valor obtido no final da avaliação, gerando um maior risco enquanto menor for a pontuação. \n\n"
    "A escala de Braden deve ser sempre usada em conjunto com o julgamento de enfermagem. \n\n"
    "Valores de riscos: \n\n"
    " - Risco muito alto (iguais ou menores a 9).\n\n"
    " - Risco alto (de 10 a 12 pontos).\n\n"
    " - Risco moderado (de 13 a 14 pontos).\n\n"
    " - Baixo risco (de 15 a 18 pontos).\n\n"
    " - Sem risco (de 19 a 23 pontos).";

     final String infoMews = "O Modified Early Warning Score (MEWS) publicado em 2001 e utiliza os parâmetros fisiológicos para alertar os médicos e demais membros da equipe assistencial sobre os pacientes em risco.  O Mews pode ser utilizado pelos técnicos, enfermeiros e ou médicos para identificar os pacientes que necessitam de maior atenção da equipe assistencial e contribuir para um melhor quadro evolutivo. Pacientes com pontuação em um único item igual a três já são considerados críticos, assim como paciente que possuem pontuação acima de 5. \n\n"
     "Referências: \n\n"
     "Morgan, R.J.M.; Williams, F.; Wright M.M. - An early warning scoring system foo detecting developing critical ilness. Clinical Intensive Care, 1997. \n\n"
     "Subbe CP, Kruger M, Rutherford P, et al. Validation of a modified early warning score in medical admissions. QJM, 2001;94:521-526.\n\n"
     "Burch VC, Tarr G, Morroni C. Modified early warning score predicts the need for hospital admission and in hospital mortality. Emerg Med J 2008; 25:674-678.";