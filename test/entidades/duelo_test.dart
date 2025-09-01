import 'package:rpg_v2/entidades/Duelo.dart';
import 'package:rpg_v2/entidades/dado.dart';
import 'package:rpg_v2/entidades/personagem.dart';
import 'package:test/test.dart';

void main() {
  group('Testes para a classe Duelo', () {
    test('Deve criar uma instânica de Duelo', () {
      final dado = Dado(20);
      final maria = Personagem('Maria', 10, 10, 10);
      final joao = Personagem('João', 10, 10, 10);
      final duelo = Duelo(jogador1: joao, jogador2: maria, dado: dado);
    });

    test('O personagem com maior velocidade deve começar.', () {
      final dado = Dado(20);
      final maria = Personagem('Maria', 10, 10, 15);
      final joao = Personagem('João', 10, 10, 10);
      final duelo = Duelo(jogador1: joao, jogador2: maria, dado: dado);
      duelo.iniciar();
      expect(duelo.jogadorVez, isNotNull);
      expect(duelo.jogadorVez?.nome, 'Maria');
      expect(duelo.oponente, isNotNull);
      expect(duelo.oponente?.nome, 'João');
    });
  });
}
