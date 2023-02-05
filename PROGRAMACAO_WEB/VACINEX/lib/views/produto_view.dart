import 'package:flutter/material.dart';

const List<String> list1 = <String>['Categoria', 'Two', 'Three', 'Four'];
const List<String> list2 = <String>['Fabricante', 'Two', 'Three', 'Four'];

class ProdutoPage extends StatefulWidget {
  const ProdutoPage({super.key});

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  String dropdownValue = list1.first;
  String dropdownValue2 = list2.first;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 800,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    onChanged: ((value) => {}),
                    // controller: fieldController,
                    decoration: const InputDecoration(
                      hintText: 'ID',
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
                    onChanged: (value) => {},
                    // controller: fieldController,
                    decoration: const InputDecoration(
                      hintText: 'Nome do produto',
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
                    onChanged: (value) => {},
                    // controller: fieldController,
                    decoration: const InputDecoration(
                      hintText: 'Preço do produto',
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
                    onChanged: (value) => {},
                    // controller: fieldController,
                    decoration: const InputDecoration(
                      hintText: 'Fabricante',
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
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    alignment: Alignment.center,
                    height: 45,
                    width: 180,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items:
                            list1.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    alignment: Alignment.center,
                    height: 45,
                    width: 180,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        // focusColor: Color.fromARGB(255, 173, 35, 35),
                        value: dropdownValue2,
                        icon: const Icon(Icons.arrow_drop_down),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        // underline: Container(
                        //   height: 2,
                        //   color: Colors.deepPurpleAccent,
                        // ),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue2 = value!;
                          });
                        },
                        items:
                            list2.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
            Container(
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: Column(
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
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 240,
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(
                            Size(150, 25),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 147, 92, 172),
                          ),
                        ),
                        onPressed: () => {},
                        child: const Text('Pesquisar'),
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(
                            Size(150, 25),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 147, 92, 172),
                          ),
                        ),
                        onPressed: () => {},
                        child: const Text('Cadastrar'),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(
                            Size(150, 25),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 147, 92, 172),
                          ),
                        ),
                        onPressed: () => {},
                        child: const Text('Deletar'),
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(
                            Size(150, 25),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 147, 92, 172),
                          ),
                        ),
                        onPressed: () => {},
                        child: const Text('Atualizar'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
