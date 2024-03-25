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
    final List<String> titulos = [
      "Onde acesso os dados originais?\nOs dados originais podem ser acessados no site oficial do TJRS, no link https://k8s-prd.tjrs.jus.br/public/api/transparencia/swagger-ui/index.html",
      "Qual o limite máximo para o período escolhido?\nSó é possível retornar consultas com intervalos de 3 meses (incluindo os extremos), caso contrário não serão retornados resultados.",
      "Quais dados posso obter através da ferramenta?\nOs dados obtidos com a ferramenta são dados judiciais, referentes a lista de orçamentos do TJRS.",
    ];
    const int lvsPercent = 55;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajuda"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 40, right: 40),
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
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Container(
                        height: (lvsPercent / 3.2) * contextSize.height / 100,
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
              height: 16,
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    "Ainda não respondemos suas dúvidas?\nEntre em contato conosco:",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
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
          ],
        ),
      ),
    );
  }
}