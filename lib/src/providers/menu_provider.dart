import 'dart:convert';

import 'package:flutter/services.dart';

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final respuesta = await rootBundle.loadString('data/menu_opts.json');
    Map datamapeada = json.decode(respuesta);
    // print(datamapeada['rutas']);
    opciones = datamapeada['rutas'];
    return opciones;
  }
}

final menuProvider = _MenuProvider();
