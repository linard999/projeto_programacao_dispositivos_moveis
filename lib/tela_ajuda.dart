import 'package:flutter/material.dart';

class TelaAjuda extends StatefulWidget {
  const TelaAjuda({super.key});

  @override
  State<TelaAjuda> createState() => _TelaAjudaState();
}

class _TelaAjudaState extends State<TelaAjuda> {
  @override
  Widget build(BuildContext context) {
    final List<String>titulos = [
      "Onde acesso os dados originais?",
      "Qual o limite máximo para o período escolhido?",
      "Quais dados posso obter através da ferramenta?",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajuda"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.green.shade900,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 3 * MediaQuery.of(context).size.height / 5,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 60, right: 60),
              itemCount: titulos.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    padding: const EdgeInsets.only(top: 40, bottom: 40, left: 16, right: 16),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade100,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        titulos[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height:  MediaQuery.of(context).size.height / 5,
            child: Column(
              children: [
                const Center(
                  child: Text(
                    "Ainda não respondemos suas dúvidas?\nEntre em contato conosco:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Text(
                    "linard999@academico.ufs.br\nnatopsx@academico.ufs.br",
                    style: TextStyle(
                      color: Colors.green[400],
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}