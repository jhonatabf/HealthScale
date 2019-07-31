import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';  
  
  Widget escalas(escala) {
    if(escala == 'braden'){
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