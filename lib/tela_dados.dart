import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dados"),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.green.shade900,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Center(
                  child: Text("Informe o período de pesquisa desejado",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(deMes,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
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
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(deAno,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(ateMes,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
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
                        decoration: BoxDecoration(
                            color: Colors.amber.shade100,
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(ateAno,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
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
                const SizedBox(height: 8.0),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green.shade900,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text("Confirmar",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ))),
                ),
                const SizedBox(height: 8.0),
                Expanded(
                    child: ListView(
                  children: [
                    ListTile(
                        title: const Text(
                            "Gestão, Manutenção e Serviços ao Estado"),
                        subtitle: const Text("01-726-2031"),
                        tileColor: Colors.amber.shade100,
                        trailing: const Icon(Icons.arrow_right_outlined),
                        onTap: () {}),
                    ListTile(
                        title: const Text("Justiça Estadual"),
                        subtitle: const Text("22-724-1021"),
                        tileColor: Colors.amber.shade100,
                        trailing: const Icon(Icons.arrow_right_outlined),
                        onTap: () {}),
                    ListTile(
                        title: const Text("Encargos Especiais"),
                        subtitle: const Text("02-725-2679"),
                        tileColor: Colors.amber.shade100,
                        trailing: const Icon(Icons.arrow_right_outlined),
                        onTap: () {}),
                  ],
                ))
              ],
            )));
  }
}
