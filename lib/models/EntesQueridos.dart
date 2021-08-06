class EntesQueridos {
  final int id;
  final String parentesco;
  final String nome;
  final int idade;
  final String telefone;
  final String imagem;

  const EntesQueridos(
      {required this.id,
      required this.parentesco,
      required this.nome,
      required this.idade,
      required this.telefone,
      required this.imagem});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'parentesco': parentesco,
      'nome': nome,
      'idade': idade,
      'telefone': telefone,
      'imagem': imagem
    };
  }

  @override
  String toString() {
    return 'EntesQueridos{id: $id,parentesco:$parentesco,nome: $nome,idade: $idade,telefone:$telefone,imagem:$imagem}';
  }
}
