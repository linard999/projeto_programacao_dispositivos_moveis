import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:projeto_programacao_dispositivos_moveis/tema.dart';
import 'package:projeto_programacao_dispositivos_moveis/telas/tela_ajuda.dart';
import 'package:projeto_programacao_dispositivos_moveis/telas/tela_dados.dart';
import 'package:projeto_programacao_dispositivos_moveis/telas/tela_home.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => TemaDinamico(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Flutter Programação para Dispositivos Móveis 2023.2',
      home: const MyHomePage(title: 'Projeto Flutter'),
      debugShowCheckedModeBanner: false,
      theme: Provider.of<TemaDinamico>(context).tema,
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
  List<Widget> telas = const [TelaHome(), TelaDados(), TelaAjuda()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: telas[_indexAtual],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 48,
        backgroundColor: Theme.of(context).colorScheme.surface,
        currentIndex: _indexAtual,
        items: [
          BottomNavigationBarItem(
            icon: CustomRoundedIcon(icon: Icons.home, color: Colors.yellow.shade600),
            label: "Home",
            activeIcon: CustomRoundedIcon(icon: Icons.home, color: Colors.red.shade700),
          ),
          BottomNavigationBarItem(
            icon: CustomRoundedIcon(icon: Icons.list, color: Colors.yellow.shade600),
            label: "Dados",
            activeIcon: CustomRoundedIcon(icon: Icons.list, color: Colors.red.shade700),
          ),
          BottomNavigationBarItem(
            icon: CustomRoundedIcon(icon: Icons.help_outline, color: Colors.yellow.shade600),
            label: "Ajuda",
            activeIcon: CustomRoundedIcon(icon: Icons.help_outline, color: Colors.red.shade700),
          ),
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

class CustomRoundedIcon extends StatelessWidget {
  final IconData? icon;
  final Color? color;

  const CustomRoundedIcon({
    super.key,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: Icon(
        icon,
        color: Theme.of(context).colorScheme.background,
      )
    );
  }
}
