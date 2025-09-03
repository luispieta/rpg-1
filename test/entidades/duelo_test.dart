import 'package:rpg_v2/entidades/Duelo.dart';
import 'package:rpg_v2/entidades/dado.dart';
import 'package:rpg_v2/entidades/personagem.dart';
import 'package:test/test.dart';

void main() {
  group('Testes para a classe Duelo', () {
    test('Deve criar uma instânica de Duelo', () {
      final dado = Dado(20);
      final maria = Personagem(nome: 'Maria', vida: 10, escudo: 10, velocidade: 10);
      final joao = Personagem(nome: 'João', vida: 10, escudo: 10, velocidade: 10);
      final duelo = Duelo(jogador1: joao, jogador2: maria, dado: dado);
      expect(duelo, isA<Duelo>());

    });

    test('O personagem com maior velocidade deve começar.', () {
      final dado = Dado(20);
      final maria = Personagem(nome: 'Maria', vida: 10, escudo: 10, velocidade: 15);
      final joao = Personagem(nome: 'João', vida: 10, escudo: 10, velocidade: 10);
      final duelo = Duelo(jogador1: joao, jogador2: maria, dado: dado);
      duelo.iniciar();
      expect(duelo.jogadorVez, isNotNull);
      expect(duelo.jogadorVez?.nome, 'João');
      expect(duelo.oponente, isNotNull);
      expect(duelo.oponente?.nome, 'Maria');
    });
  });
}
