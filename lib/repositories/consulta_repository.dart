import 'package:projeto_programacao_dispositivos_moveis/models/consulta_model.dart';
import 'package:projeto_programacao_dispositivos_moveis/services/http_client.dart';
import 'dart:convert';

abstract class IConsultaRepository {
  Future<List<ConsultaModel>> getRegistros(String ano, String mes);
}

class ConsultaRepository implements IConsultaRepository {
  @override
  Future<List<ConsultaModel>> getRegistros(String ano, String mes) async {
    String url =
        "https://k8s-prd.tjrs.jus.br/public/api/transparencia/orcamento/$ano/$mes";

    var resposta = await HttpClient().get(url: url);
    if (resposta.statusCode == 200) {
      var lista = jsonDecode(resposta.body) as List;
      var registros =
          lista.map((item) => ConsultaModel.fromJson(item)).toList();
      return registros;
    } else {
      throw Exception('Erro ao buscar registros');
    }
  }
}
