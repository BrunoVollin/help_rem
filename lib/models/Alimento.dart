class Alimento {
  final int id;
  final String nome;
  final bool pode;
  final String imagem;

  Alimento(
      {required this.id,
      required this.nome,
      required this.pode,
      required this.imagem});

  Map<String, dynamic> toMap() {
    return {'id': id, 'nome': nome, 'pode': pode, 'imagem': imagem};
  }

  @override
  String toString() {
    return 'Alimento{id: $id, nome: $nome, pode: $pode,imagem: $imagem}';
  }
}
