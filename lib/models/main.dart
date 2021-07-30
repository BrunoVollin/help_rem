class EntesQueridos {
  final String id;
  final String nome;
  final String telefone;
  final String parentesco;
  final String about;
  final String imagem;

  EntesQueridos(this.id, this.nome, this.telefone, this.parentesco, this.about,
      this.imagem);

  soma() {
    return "esse é o nome $nome";
  }
}

void main() {
  EntesQueridos davi =
      EntesQueridos('1', "bruno", "345345", "parente", "bacana", "eu.jped");
  print(davi.id);
  print(davi.soma());
}
