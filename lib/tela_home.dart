import 'package:flutter/material.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  final List<String> mensagens = [
    "Bem-Vindo!",
    "Essa é a tela inicial da aplicação. As principais funcionalidades se encontram na tela de dados.",
    "Obtenha os dados do tribunal de justiça e os filtros de pesquisa na tela de dados.",
    "Caso tenha alguma dúvida, veja a tela de ajuda."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.green.shade900,
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(16.0),
            itemCount: mensagens.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green.shade900,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(mensagens[index],
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ))));
            }));
  }
}
