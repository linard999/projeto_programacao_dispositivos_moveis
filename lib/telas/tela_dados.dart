import 'package:flutter/material.dart';

class DadosOrcamento {
  String titulo;
  String codigo;
  DadosOrcamento({required this.titulo, required this.codigo});
}
class TelaDados extends StatefulWidget {
  const TelaDados({super.key});

  @override
  State<TelaDados> createState() => _TelaDadosState();
}

class _TelaDadosState extends State<TelaDados> {
  String deMes = '';
  String deAno = '';
  String ateMes = '';
  String ateAno = '';
  List<DadosOrcamento> orcamentos = [
    DadosOrcamento(titulo: "Gestão, Manutenção e Serviços ao Estado", codigo: "01-726-2031"),
    DadosOrcamento(titulo: "Justiça Estadual", codigo: "22-724-1021"),
    DadosOrcamento(titulo: "Encargos Especiais", codigo: "02-725-2679"),
    DadosOrcamento(titulo: "Título", codigo: "12-345-6789"),
    DadosOrcamento(titulo: "Título", codigo: "12-345-6789"),
    DadosOrcamento(titulo: "Título", codigo: "12-345-6789"),
    DadosOrcamento(titulo: "Título", codigo: "12-345-6789"),
    DadosOrcamento(titulo: "Título", codigo: "12-345-6789"),
    DadosOrcamento(titulo: "Título", codigo: "12-345-6789"),
    DadosOrcamento(titulo: "Título", codigo: "12-345-6789"),
  ];

  @override
  Widget build(BuildContext context) {
    final contextSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dados"),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.green.shade900,
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 10 * contextSize.width / 100, right: 10 * contextSize.width / 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Center(
                  child: Text("Informe o período de pesquisa desejado",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("De",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red.shade700)),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.amber.shade100,
                            borderRadius: BorderRadius.circular(30.0)),
                            width: 33 * contextSize.width /100,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(deMes,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              PopupMenuButton(
                                onSelected: (value) {
                                  setState(() {
                                    deMes = value;
                                  });
                                },
                                itemBuilder: (context) => [
                                  const PopupMenuItem(
                                      value: 'JAN', child: Text("Janeiro")),
                                  const PopupMenuItem(
                                      value: 'FEV', child: Text("Fevereiro")),
                                  const PopupMenuItem(
                                      value: 'MAR', child: Text("Março")),
                                  const PopupMenuItem(
                                      value: 'ABR', child: Text("Abril")),
                                  const PopupMenuItem(
                                      value: 'MAI', child: Text("Maio")),
                                  const PopupMenuItem(
                                      value: 'JUN', child: Text("Junho")),
                                  const PopupMenuItem(
                                      value: 'JUL', child: Text("Julho")),
                                  const PopupMenuItem(
                                      value: 'AGO', child: Text("Agosto")),
                                  const PopupMenuItem(
                                      value: 'SET', child: Text("Setembro")),
                                  const PopupMenuItem(
                                      value: 'OUT', child: Text("Outubro")),
                                  const PopupMenuItem(
                                      value: 'NOV', child: Text("Novembro")),
                                  const PopupMenuItem(
                                      value: 'DEZ', child: Text("Dezembro")),
                                ],
                              ),
                            ],
                          ),
                        ))),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.amber.shade100,
                            borderRadius: BorderRadius.circular(30.0)),
                            width: 33 * contextSize.width /100,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(deAno,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              PopupMenuButton(
                                onSelected: (value) {
                                  setState(() {
                                    deAno = value;
                                  });
                                },
                                itemBuilder: (context) => [
                                  const PopupMenuItem(
                                      value: '2019', child: Text("2019")),
                                  const PopupMenuItem(
                                      value: '2020', child: Text("2020")),
                                  const PopupMenuItem(
                                      value: '2021', child: Text("2021")),
                                  const PopupMenuItem(
                                      value: '2022', child: Text("2022")),
                                  const PopupMenuItem(
                                      value: '2023', child: Text("2023")),
                                ],
                              ),
                            ],
                          ),
                        ))),
                  ],
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Até",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red.shade700)),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.amber.shade100,
                            borderRadius: BorderRadius.circular(30.0)),
                            width: 33 * contextSize.width /100,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(ateMes,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              PopupMenuButton(
                                onSelected: (value) {
                                  setState(() {
                                    ateMes = value;
                                  });
                                },
                                itemBuilder: (context) => [
                                  const PopupMenuItem(
                                      value: 'JAN', child: Text("Janeiro")),
                                  const PopupMenuItem(
                                      value: 'FEV', child: Text("Fevereiro")),
                                  const PopupMenuItem(
                                      value: 'MAR', child: Text("Março")),
                                  const PopupMenuItem(
                                      value: 'ABR', child: Text("Abril")),
                                  const PopupMenuItem(
                                      value: 'MAI', child: Text("Maio")),
                                  const PopupMenuItem(
                                      value: 'JUN', child: Text("Junho")),
                                  const PopupMenuItem(
                                      value: 'JUL', child: Text("Julho")),
                                  const PopupMenuItem(
                                      value: 'AGO', child: Text("Agosto")),
                                  const PopupMenuItem(
                                      value: 'SET', child: Text("Setembro")),
                                  const PopupMenuItem(
                                      value: 'OUT', child: Text("Outubro")),
                                  const PopupMenuItem(
                                      value: 'NOV', child: Text("Novembro")),
                                  const PopupMenuItem(
                                      value: 'DEZ', child: Text("Dezembro")),
                                ],
                              ),
                            ],
                          ),
                        ))),
                    Container(
                        width: 33 * contextSize.width /100,
                        decoration: BoxDecoration(
                            color: Colors.amber.shade100,
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(ateAno,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              PopupMenuButton(
                                onSelected: (value) {
                                  setState(() {
                                    ateAno = value;
                                  });
                                },
                                itemBuilder: (context) => [
                                  const PopupMenuItem(
                                      value: '2019', child: Text("2019")),
                                  const PopupMenuItem(
                                      value: '2020', child: Text("2020")),
                                  const PopupMenuItem(
                                      value: '2021', child: Text("2021")),
                                  const PopupMenuItem(
                                      value: '2022', child: Text("2022")),
                                  const PopupMenuItem(
                                      value: '2023', child: Text("2023")),
                                ],
                              ),
                            ],
                          ),
                        ))),
                  ],
                ),
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green.shade900,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Confirmar",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ))),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Scrollbar(
                      child: ListView.builder(
                        itemCount: orcamentos.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(
                              orcamentos[index].titulo,
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              orcamentos[index].codigo,
                              textAlign: TextAlign.center,
                            ),
                            trailing: const Icon(Icons.arrow_right_outlined),
                            onTap: () {},
                          );
                        }
                      ),
                    ),
                  ),
                )
                /*Expanded(
                    child: ListView(
                  children: 
                      List<Widget>.from(orcamentos.map((DadosOrcamento dado) => ListTile(
                        title: Text(
                            dado.titulo,
                            textAlign: TextAlign.center,
                          ),
                        subtitle: Text(
                          dado.codigo,
                          textAlign: TextAlign.center,
                        ),
                        tileColor: Colors.amber.shade100,
                        trailing: const Icon(Icons.arrow_right_outlined),
                        onTap: () {}))),
                ))*/
              ],
            )));
  }
}
