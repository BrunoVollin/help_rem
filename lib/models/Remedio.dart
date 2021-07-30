class Remedio {
  final int id;
  final String nome;
  final String horario;
  final int quantidade;

  Remedio(
      {required this.id,
      required this.nome,
      required this.horario,
      required this.quantidade});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'horario': horario,
      'quantidade': quantidade
    };
  }

  @override
  String toString() {
    return 'Remedio{id: $id, nome: $nome, horario: $horario,quantidade:$quantidade}';
  }
}
