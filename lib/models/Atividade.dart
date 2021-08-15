import 'package:image_picker/image_picker.dart';

class Atividade {
  final String id;
  final String nome;
  final String horario;
  final String descricao;
  final XFile? imagem;

  const Atividade({required this.horario, this.imagem, 
      required this.id, required this.nome, required this.descricao});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'descricao': descricao,
      'horario': horario,
      'imagem': imagem
    };
  }

  @override
  String toString() {
    return 'Atividade{id: $id, name: $nome, descricao: $descricao,horario: $horario, imagem: $imagem}';
  }
}
