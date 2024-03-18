import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_programacao_dispositivos_moveis/repositories/consulta_repository.dart';

void main() {
  group('Teste', () {
    test('Teste de Repository', () async {
      final repository = ConsultaRepository();
      final registros = await repository.getRegistros(2023, 5);
      expect(registros, isNull);
    });
  });
}