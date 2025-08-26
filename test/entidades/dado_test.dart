import 'package:rpg_v2/entidades/dado.dart';
import 'package:test/test.dart';

void main() {
  group('Testes para a entidade Dado', () {
    test('Deve criar uma instância de dado', () {
      final dado = Dado();
      expect(dado, isA<Dado>());
    });
  });
}
