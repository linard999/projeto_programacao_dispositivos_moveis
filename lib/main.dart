import 'package:flutter/material.dart';
import 'package:projeto_programacao_dispositivos_moveis/tela_ajuda.dart';
import 'package:projeto_programacao_dispositivos_moveis/tela_dados.dart';
import 'package:projeto_programacao_dispositivos_moveis/tela_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Projeto Flutter Programação para Dispositivos Móveis 2023.2',
      home: MyHomePage(title: 'Projeto Flutter'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _indexAtual = 0;
  List<Widget> telas = [TelaHome(), TelaDados(), TelaAjuda()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: telas[_indexAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexAtual,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.yellow.shade600),
            label: "Home",
            activeIcon: Icon(Icons.home, color: Colors.red.shade700),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, color: Colors.yellow.shade600),
            label: "Dados",
            activeIcon: Icon(Icons.list, color: Colors.red.shade700),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark, color: Colors.yellow.shade600),
            label: "Ajuda",
            activeIcon: Icon(Icons.question_mark, color: Colors.red.shade700),
          )
        ],
        onTap: (index) {
          setState(() {
            _indexAtual = index;
          });
        },
      ),
    );
  }
}
