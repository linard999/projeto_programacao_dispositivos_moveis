import 'package:flutter/material.dart';

class TelaAjuda extends StatefulWidget {
  const TelaAjuda({super.key});

  @override
  State<TelaAjuda> createState() => _TelaAjudaState();
}

class _TelaAjudaState extends State<TelaAjuda> {
  @override
  Widget build(BuildContext context) {
    final contextSize = MediaQuery.of(context).size;
    final List<String>titulos = [
      "Onde acesso os dados originais?",
      "Qual o limite máximo para o período escolhido?",
      "Quais dados posso obter através da ferramenta?",
      //"Duvida",
      //"Duvida",
      //"Duvida",
    ];
    const int lvsPercent = 55;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajuda"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.green.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 55, right: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: lvsPercent * contextSize.height / 100,
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: titulos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        height: 50 * contextSize.height / (100 * titulos.length),
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: Colors.amber.shade100,
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
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 10 * contextSize.height / 100,
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "Ainda não respondemos suas dúvidas?\nEntre em contato conosco:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Center(
                    child: Text(
                      "linard999@academico.ufs.br\nnatopsx@academico.ufs.br",
                      style: TextStyle(
                        color: Colors.green.shade600,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.center,
                    ),
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