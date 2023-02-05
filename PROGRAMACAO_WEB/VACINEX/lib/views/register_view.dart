import 'package:flutter/material.dart';
import 'package:vacinex/models/cliente_model.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fieldController = TextEditingController();
  final Map dados = {'nome': null, 'email': null, 'cpf': null, 'numero': null};

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // height: MediaQuery.of(context).size.height / 15,
        width: 450,
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Bem Vindo!',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                ),
                TextFormField(
                  onChanged: ((value) => {dados['nome'] = value}),
                  // controller: fieldController,
                  decoration: const InputDecoration(
                    hintText: 'Nome',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(7)),
                      borderSide: BorderSide(),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(7)),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(15),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                ),
                TextFormField(
                  onChanged: (value) => {
                    dados['email'] = value,
                  },
                  // controller: fieldController,
                  decoration: const InputDecoration(
                    hintText: 'E-mail',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(7)),
                      borderSide: BorderSide(),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(7)),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(15),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                ),
                TextFormField(
                  onChanged: (value) => {dados['cpf'] = value},
                  // controller: fieldController,
                  decoration: const InputDecoration(
                    hintText: 'CPF',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(7)),
                      borderSide: BorderSide(),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(7)),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(15),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                ),
                TextFormField(
                  onChanged: (value) => {dados['numero'] = value},
                  // controller: fieldController,
                  decoration: const InputDecoration(
                    hintText: 'Número',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(7)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(7)),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(15),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(
                      Size(185, 25),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 147, 92, 172),
                    ),
                  ),
                  onPressed: () => {
                    print(dados.values),
                    if (formKey.currentState!.validate())
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Processing data'),
                          ),
                        )
                      }
                  },
                  child: const Text('Cadastrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
