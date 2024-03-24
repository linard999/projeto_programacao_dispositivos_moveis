import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_programacao_dispositivos_moveis/repositories/consulta_repository.dart';

void main() {
  group('Teste', () {
    test('Teste de Repository', () async {
      final repository = ConsultaRepository();
      final registros = await repository.getRegistros("1", "2022", "3", "2022");
      expect(registros, isNull);
    });
  });
}