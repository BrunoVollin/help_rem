import 'dart:io';

import 'package:image_picker/image_picker.dart';

class EntesQueridos {
  final String id;
  final String parentesco;
  final String nome;
  final int idade;
  final String telefone;
  final XFile? imagem;

  const EntesQueridos({
    required this.id,
    required this.parentesco,
    required this.nome,
    required this.idade,
    required this.telefone,
    this.imagem,
  });

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
