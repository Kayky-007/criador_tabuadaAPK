import 'dart:ui';

import 'package:flutter/material.dart';

class HomeController {
  
  TextEditingController numero_entrada = TextEditingController();
  String resultado = '';

  void gerarTabuada() {
    if (numero_entrada.text.isEmpty) {
      resultado = 'Preencha o campo';
    } else {
      int numero = int.parse(numero_entrada.text);
      StringBuffer sb = StringBuffer(); 
      for (int i = 1; i <= 10; i++) {
        sb.writeln('$numero X $i = ${numero * i}');
      }
      resultado = sb.toString(); 
    }
  }
}

