import 'package:image_picker/image_picker.dart';

class Alimento {
  final String id;
  final String nome;
  final String pode;
  final XFile? imagem;

  const Alimento(
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
