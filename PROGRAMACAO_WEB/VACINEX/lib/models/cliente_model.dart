class Cliente {
  String nome;
  String Email;
  String cpf;
  String numero;

  Cliente({
    required this.nome,
    required this.Email,
    required this.cpf,
    required this.numero,
  });

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'email': Email,
      'cpf': cpf,
      'numero': numero,
    };
  }
}
