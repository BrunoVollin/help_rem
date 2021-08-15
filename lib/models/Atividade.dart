class Atividade {
  final String id;
  final String nome;
  final String descricao;

  const Atividade({required this.id, required this.nome, required this.descricao});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'descricao': descricao,
    };
  }

  @override
  String toString() {
    return 'Atividade{id: $id, name: $nome, descricao: $descricao}';
  }
}
