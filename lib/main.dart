import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:projeto_programacao_dispositivos_moveis/tema.dart';
import 'package:projeto_programacao_dispositivos_moveis/telas/tela_ajuda.dart';
import 'package:projeto_programacao_dispositivos_moveis/telas/tela_dados.dart';
import 'package:projeto_programacao_dispositivos_moveis/telas/tela_home.dart';
import 'package:projeto_programacao_dispositivos_moveis/telas/tela_login.dart';
import 'package:projeto_programacao_dispositivos_moveis/telas/tela_cadastro.dart';
import 'package:projeto_programacao_dispositivos_moveis/telas/myhomepage.dart';

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
      debugShowCheckedModeBanner: false,
      theme: Provider.of<TemaDinamico>(context).tema,
      home: const TelaLogin(),
    );
  }
}
