import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VendaPage extends StatefulWidget {
  const VendaPage({super.key});

  @override
  State<VendaPage> createState() => _VendaPageState();
}

class _VendaPageState extends State<VendaPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: TextFormField(
                  // onChanged: (value) => {dados['numero'] = value},
                  // controller: fieldController,
                  decoration: const InputDecoration(
                    hintText: 'Selecionar cliente',
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
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(
                      Size(150, 40),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 147, 92, 172),
                    ),
                  ),
                  onPressed: () => {},
                  child: const Text('Pesquisar'),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: TextFormField(
                  // onChanged: (value) => {dados['numero'] = value},
                  // controller: fieldController,
                  decoration: const InputDecoration(
                    hintText: 'ID do produto',
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
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
              SizedBox(
                width: 200,
                child: TextFormField(
                  // onChanged: (value) => {dados['numero'] = value},
                  // controller: fieldController,
                  decoration: const InputDecoration(
                    hintText: 'Quantidade',
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
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(
                      Size(150, 40),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 147, 92, 172),
                    ),
                  ),
                  onPressed: () => {},
                  child: const Text('Selecionar produto'),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 700,
                alignment: Alignment.center,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Table(
                      border: TableBorder.symmetric(
                        inside: const BorderSide(width: 0.2),
                        outside: const BorderSide(width: 0.2),
                      ),
                      children: [
                        TableRow(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 32,
                              child: Text('ID'),
                            ),
                            TableCell(
                              child: Container(
                                alignment: Alignment.center,
                                height: 32,
                                child: Text('Nome'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                alignment: Alignment.center,
                                height: 32,
                                child: Text('Preço'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                alignment: Alignment.center,
                                height: 32,
                                child: Text('Fabricante'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                alignment: Alignment.center,
                                height: 32,
                                child: Text('Quantidade'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 320,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: TextFormField(
                  // onChanged: (value) => {dados['numero'] = value},
                  // controller: fieldController,
                  decoration: const InputDecoration(
                    hintText: 'Valor a ser pago',
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
              ),
              Padding(padding: EdgeInsets.fromLTRB(50, 0, 0, 0)),
              SizedBox(
                width: 200,
                child: TextFormField(
                  // onChanged: (value) => {dados['numero'] = value},
                  // controller: fieldController,
                  decoration: const InputDecoration(
                    hintText: '',
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
              ),
              Padding(padding: EdgeInsets.fromLTRB(50, 0, 0, 0)),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(
                      Size(150, 40),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 147, 92, 172),
                    ),
                  ),
                  onPressed: () => {},
                  child: const Text('Confirmar'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
