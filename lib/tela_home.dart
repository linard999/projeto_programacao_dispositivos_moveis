import 'package:flutter/material.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  final List<String> mensagens = [
    "Bem Vindo!\nEssa é a tela inicial da aplicação. As principais funcionalidades se encontram na tela de dados.",
    "Obtenha os dados do tribunal de justiça e os filtros de pesquisa na tela de dados.",
    "Caso tenha alguma dúvida, veja a tela de ajuda."
  ];

  @override
  Widget build(BuildContext context) {
    final Size contextSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.green.shade900,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 15 * contextSize.width / 100, right: 15 * contextSize.width / 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20 * contextSize.height / 100,
                child: IconButton(
                  autofocus: false,
                  icon: Icon(
                    Icons.palette,
                    color: Colors.green.shade900,
                    size: 7 * contextSize.height / 100,
                  ),
                  onPressed: () {
                  },
                ),
              ),
              SizedBox(
                height: 60 * contextSize.height / 100,
                child: ListView.builder(
                    itemCount: mensagens.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Container(
                              height: 16 * contextSize.height / 100,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade900,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(mensagens[index],
                                    style:
                                        const TextStyle(color: Colors.white, fontSize: 15),
                                    textAlign: TextAlign.center),
                              ))));
                    }),
              ),
            ],
          ),
        ));
  }
}
