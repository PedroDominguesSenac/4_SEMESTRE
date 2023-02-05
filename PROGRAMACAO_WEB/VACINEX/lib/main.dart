import 'package:flutter/material.dart';
import 'package:vacinex/views/produto_view.dart';
import 'package:vacinex/views/register_view.dart';
import 'package:get/get.dart';
import 'package:vacinex/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/': (context) => const MyHomePage(title: 'GameCenter'),
        '/login': (context) => const ProdutoPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
