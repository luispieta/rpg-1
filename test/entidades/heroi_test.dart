import 'package:rpg_v2/entidades/heroi.dart';
import 'package:rpg_v2/entidades/personagem.dart';
import 'package:test/test.dart';

void main() {
  group('Testes para Heroi', () {
    test('Deve criar um objeto(instância) de Heroi', () {
      final heroi = Heroi(
        reino: 'Corole Vivida',
        missao: 'Ir na festa da laranja',
        nome: 'Jemerson',
        vida: 10,
        escudo: 10,
        velocidade: 10,
      );
      expect(heroi, isA<Heroi>());
      expect(heroi, isA<Personagem>());
    });
  });
}
