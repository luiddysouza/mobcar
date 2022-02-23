class Dados {
  final int codigo;
  final String nome;

  Dados({
    required this.codigo,
    required this.nome,
  });

  factory Dados.fromJson(Map json) {
    return Dados(
      codigo: json['codigo'],
      nome: json['nome'],
    );
  }
}
