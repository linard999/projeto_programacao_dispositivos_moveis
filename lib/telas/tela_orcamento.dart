import 'package:flutter/material.dart';
import 'package:prog_disp_moveis_tjrs/prog_disp_moveis_tjrs.dart';

class TelaOrcamento extends StatelessWidget {
  final Orcamentos orcamentos;
  const TelaOrcamento({super.key, required this.orcamentos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orçamento"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.green.shade900,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(16),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Text(
                    "Código da Unidade Orçamentária: " +
                        orcamentos.unidadeOrcamentariaCodigo!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Descrição da Unidade Orçamentária: " +
                        orcamentos.unidadeOrcamentariaDescricao!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Função e Subfunção: " + orcamentos.funcaoESubFuncao!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Programática: " + orcamentos.programatica!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Descrição da Unidade Orçamentária: " +
                        orcamentos.unidadeOrcamentariaDescricao!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Descrição do Programa: " + orcamentos.programaDescricao!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Ação e Subtítulo: " + orcamentos.acaoESubtitulo!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Esfera: " + orcamentos.esfera!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Código da Fonte: " + orcamentos.fonteCodigo!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Descrição da Fonte: " + orcamentos.fonteDescricao!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Código GND: " + orcamentos.gndCodigo!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Inicial: " + orcamentos.inicial!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Acréscimos de Créditos Adicionais: " +
                        orcamentos.creditosAdicionaisAcrescimo!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Decréscimos de Créditos Adicionais: " +
                        orcamentos.creditosAdicionaisDescrescimos!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Atualizada: " + orcamentos.atualizada!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Contingenciado: " + orcamentos.contingenciado!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Movimentação Líquida de Créditos de Provisão: " +
                        orcamentos.movLiquidaCreditosProvisao!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Movimentação Líquida de Créditos de Destaque: " +
                        orcamentos.movLiquidaCreditosDestaque!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Líquida: " + orcamentos.liquida!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Empenhado: " + orcamentos.empenhado!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Empenhado Porcentagem: " + orcamentos.empenhadoPorcentagem!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Liquidado: " + orcamentos.liquidado!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Liquidado Porcentagem: " + orcamentos.liquidadoPorcentagem!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Pago: " + orcamentos.pago!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Pago Porcentagem: " + orcamentos.pagoPorcentagem!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                    ]
                  ),
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
