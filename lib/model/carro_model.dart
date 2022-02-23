import 'dados_model.dart';

class Carro {
  final Dados? fabricante;
  final Dados? modelo;
  final Dados? ano;
  final double? valor;

  Carro({
    this.fabricante,
    this.modelo,
    this.ano,
    this.valor,
  });
}
