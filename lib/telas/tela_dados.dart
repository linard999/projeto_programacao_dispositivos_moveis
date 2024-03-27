import 'package:flutter/material.dart';
import 'package:projeto_programacao_dispositivos_moveis/telas/tela_orcamento.dart';
import 'package:prog_disp_moveis_tjrs/prog_disp_moveis_tjrs.dart';

class TelaDados extends StatefulWidget {
  const TelaDados({super.key});

  @override
  State<TelaDados> createState() => _TelaDadosState();
}

class _TelaDadosState extends State<TelaDados> {
  final TextEditingController _mesInicial = TextEditingController();
  final TextEditingController _anoInicial = TextEditingController();
  final TextEditingController _mesFinal = TextEditingController();
  final TextEditingController _anoFinal = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final contextSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dados"),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ),
        body: Padding(
            padding: EdgeInsets.only(
                top: 16.0,
                bottom: 16.0,
                left: 7 * contextSize.width / 100,
                right: 7 * contextSize.width / 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Informe o período de pesquisa desejado",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary)),
                      IconButton(
                        icon: const Icon(Icons.filter_alt),
                        color: Colors.red,
                        iconSize: 30,
                        onPressed: () {},
                      ),
                    ],
                  ),
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
                    SizedBox(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
                          labelText: 'Mês',
                          border: const OutlineInputBorder(),
                        ),
                        //style: TextStyle(color: Theme.of(context).colorScheme.primary),
                        controller: _mesInicial,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Ano',
                          labelStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
                          border: const OutlineInputBorder(),
                        ),
                        controller: _anoInicial,
                        keyboardType: TextInputType.number,
                      ),
                    ),
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
                    SizedBox(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Mês',
                          labelStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
                          border: const OutlineInputBorder(),
                        ),
                        controller: _mesFinal,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Ano',
                          labelStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
                          border: const OutlineInputBorder(),
                        ),
                        controller: _anoFinal,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    setState(() {});
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
                        child: FutureBuilder(
                            future: ConsultaRepository().getRegistros(
                                _mesInicial.text.toString(),
                                _anoInicial.text.toString(),
                                _mesFinal.text.toString(),
                                _anoFinal.text.toString()),
                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              if (snapshot.data == null) {
                                return const Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: CircularProgressIndicator(),
                                    ),
                                    Center(child: Text("Carregando...")),
                                    Center(child: Text("Não faça consultas com mais de 3 meses")),
                                    Center(child: Text("no aplicativo ou ele não irá funcionar"))
                                  ],
                                ));
                              } else {
                                List<String> titulos = [];
                                List<String> subtitulos = [];
                                List<Orcamentos> orcamentos = [];
                                for (int i = 0; i < snapshot.data.length; i++) {
                                  for (int j = 0;
                                      j < snapshot.data[i].orcamentos.length;
                                      j++) {
                                    titulos.add(snapshot.data[i].orcamentos[j]
                                        .unidadeOrcamentariaDescricao);
                                    subtitulos.add(snapshot
                                        .data[i].orcamentos[j].programatica);
                                    orcamentos.add(snapshot.data[i].orcamentos[j]);
                                  }
                                }

                                return ListView.builder(
                                    itemCount: titulos.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return ListTile(
                                          title: Text(titulos[index], textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold)),
                                          subtitle: Text(subtitulos[index], textAlign: TextAlign.center),
                                          onTap: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(builder: (context) => TelaOrcamento(orcamentos: orcamentos[index]))
                                            );
                                          },);
                                    });
                              }
                            })),
                  ),
                )
              ],
            )));
  }
}
