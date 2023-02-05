import 'package:flutter/material.dart';
import 'package:vacinex/views/produto_view.dart';
import 'package:vacinex/views/register_view.dart';
import 'package:vacinex/views/relatorio_view.dart';
import 'package:vacinex/views/venda_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  Widget page = RegisterPage();

  void _onItemTapped(int index) {
    print(index);

    setState(
      () {
        _selectedIndex = index;
        if (index == 0) {
          print('entrou 1');
          page = const RegisterPage();
          // _selectedIndex = index;
        }
        if (_selectedIndex == 1) {
          print('entrou 2');
          page = const ProdutoPage();
          // _selectedIndex = index;
        }
        if (_selectedIndex == 2) {
          print('entrou 2');
          page = const VendaPage();
          // _selectedIndex = index;
        }
        if (_selectedIndex == 3) {
          print('entrou 2');
          page = const RelatorioPage();
          // _selectedIndex = index;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 147, 92, 172),
                Color.fromARGB(255, 145, 81, 175),
                Color.fromARGB(255, 197, 39, 189)
              ],
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        title: SizedBox(
          child: Column(
            children: [
              const Icon(Icons.videogame_asset),
              Text(widget.title),
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          // width: double.infinity,
          // height: double.infinity,
          // padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("background/back.jpg"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Navigator(
            reportsRouteUpdateToEngine: true,
            onGenerateRoute: (settings) {
              return PageRouteBuilder(
                pageBuilder: (_, __, ___) => page,
                settings: settings,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(0.0, 1.0);
                  const end = Offset.zero;
                  final tween = Tween(begin: begin, end: end);
                  final offsetAnimation = animation.drive(tween);

                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                },
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            selectedItemColor: const Color.fromARGB(255, 143, 40, 190),
            unselectedItemColor: Colors.grey,
            iconSize: 25,
            elevation: 5,
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Cadastro',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.my_library_add_rounded),
                label: 'Cadastro de Produto',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Vendas',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.article),
                label: 'Relatório',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
