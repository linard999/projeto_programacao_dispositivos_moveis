import 'package:flutter/material.dart';
import 'package:projeto_programacao_dispositivos_moveis/api/orcamento.dart';
import 'package:projeto_programacao_dispositivos_moveis/componentes/datebox.dart';
import 'package:projeto_programacao_dispositivos_moveis/telas/tela_orcamento.dart';
class TelaDados extends StatefulWidget {
  const TelaDados({super.key});

  @override
  State<TelaDados> createState() => _TelaDadosState();
}

class _TelaDadosState extends State<TelaDados> {
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
            padding: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 7 * contextSize.width / 100, right: 7 * contextSize.width / 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Informe o período de pesquisa desejado",
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      IconButton(
                        icon: const Icon(Icons.filter_alt),
                        color: Colors.red,
                        iconSize: 30,
                        onPressed: (){},
                      ),
                    ],
                  ),
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
                    const MonthDateBox(),
                    const YearDateBox(),
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
                    const MonthDateBox(),
                    const YearDateBox(),
                  ],
                ),
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    
                  },
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
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      borderRadius: BorderRadius.circular(15),
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
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => TelaOrcamento(orcamento: orcamentos[index])),
                              );
                            },
                          );
                        }
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}