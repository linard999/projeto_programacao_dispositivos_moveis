import 'package:flutter_test/flutter_test.dart';
import 'package:prog_disp_moveis_tjrs/prog_disp_moveis_tjrs.dart';

void main() {
  group('Teste', () {
    test('Teste de Repository', () async {
      final repository = ConsultaRepository();
      final registros = await repository.getRegistros("1", "2022", "3", "2022");
      expect(registros, isNull);
    });
  });
}