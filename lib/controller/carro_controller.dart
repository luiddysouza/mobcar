import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../model/dados_model.dart';

import 'package:http/http.dart' as http;

class CarroController {
  ValueNotifier<List<Dados>> fabricante = ValueNotifier<List<Dados>>([]);
  ValueNotifier<List<Dados>> modelo = ValueNotifier<List<Dados>>([]);
  ValueNotifier<List<Dados>> ano = ValueNotifier<List<Dados>>([]);
  ValueNotifier<double> valor = ValueNotifier<double>(0.0);

  chamadaAPI(String opcao, ValueNotifier dados) async {
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse('https://parallelum.com.br/fipe/api/v1$opcao'),
      );
      var decodedResponse = jsonDecode(response.body);
      //TODO como fazer quanto a ser lista ou não sem gambiarra usando Is List
      dados.value = decodedResponse.map((e) => Dados.fromJson(e)).toList();
    } finally {
      client.close();
    }
  }
}
