
class Login {
  final int id;
  final String email;
  final String senha;

  Login({
    required this.id,
    required this.email,
    required this.senha
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'senha': senha,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Login{id: $id, name: $email, age: $senha}';
  }
}

