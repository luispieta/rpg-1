import 'package:rpg_v2/entidades/dado.dart';
import 'package:test/test.dart';

void main() {
  group('Testes para a entidade Dado', () {
    test('Deve criar uma instância de dado', () {
      final dado = Dado(20);
      expect(dado, isA<Dado>());
      expect(dado.lados, 20);
    });

    test('Valor gerado deve estar entre 1 e o número de lados', () {
      final dado = Dado(6);
      final resultado = dado.jogarDado();
      expect(resultado >= 1 && resultado <= 6, isTrue);
    });

    test('Um dado de 1 lado deve sempre retornar 1', () {
      expect(Dado(1).jogarDado(), 1);
    });
  });
}
