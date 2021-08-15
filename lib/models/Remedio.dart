import 'package:image_picker/image_picker.dart';

class Remedio {
  final String id;
  final String nome;
  final String horario;
  final int quantidade;
  final XFile? imagem;

  const Remedio({
    required this.id,
    required this.nome,
    required this.horario,
    required this.quantidade,
    this.imagem,
  });

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
