import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RelatorioPage extends StatefulWidget {
  const RelatorioPage({super.key});

  @override
  State<RelatorioPage> createState() => _RelatorioPageState();
}

class _RelatorioPageState extends State<RelatorioPage> {
  pickBirthday() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2500),
    ).then(
      (x) => {
        // if (x?.day != null)
        //   {
        //     setState(
        //       (() => {
        //             // BirthdayDate =
        //             //     "${value?.day}/${value?.month}/${value?.year}",
        //             hasData = true,
        //             _fieldController.text = DateFormat('dd/MM/yyyy').format(x!),
        //             hasError = false
        //           }),
        //     )
        //   }
        // else
        //   {
        //     setState(
        //       (() => {hasError = true}),
        //     )
        //   }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 45,
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(7)),
                      ),
                      suffixIcon: IconButton(
                        onPressed: pickBirthday,
                        icon: Icon(Icons.calendar_month),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text("Até"),
                ),
                SizedBox(
                  height: 45,
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(7)),
                      ),
                      suffixIcon: IconButton(
                        onPressed: pickBirthday,
                        icon: Icon(Icons.calendar_month),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(
                        Size(185, 25),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 147, 92, 172),
                      ),
                    ),
                    onPressed: () => {
                      // print(dados.values),
                      // if (formKey.currentState!.validate())
                      //   {
                      //     ScaffoldMessenger.of(context).showSnackBar(
                      //       const SnackBar(
                      //         content: Text('Processing data'),
                      //       ),
                      //     )
                      //   }
                    },
                    child: const Text('Emitir'),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
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
      ),
    );
  }
}
