import 'package:rpg_v2/entidades/personagem.dart';
import 'package:test/test.dart';

void main() {
  group('Testes para a classe Personagem', () {
    test('Deve criar um objeto de Personagem', () {
      final personagem = Personagem(nome: 'João', vida: 10, escudo: 10, velocidade: 10);
      expect(personagem, isA<Personagem>());
    });

    test('Descudo: eve velocidade: inicializar com os valores corretos.', () {
      final personagem = Personagem(nome: 'Maria', vida: 15, escudo: 12, velocidade: 33);
      expect(personagem.nome, 'Maria');
      expect(personagem.vida, 15);
      expect(personagem.escudo, 12);
      expect(personagem.velocidade, 33);
    });

    test('Deve reduzir a vida ao defender e receber dano.', () {
      final personagem = Personagem(nome: 'João', vida: 10, escudo: 10, velocidade: 10);
      expect(personagem.vida, 10);
      personagem.defender(15);
      expect(personagem.vida, 5);
    });

    test('Não deve diminuir a vida, caso o escudo for maior que o ataque', () {
      final personagem = Personagem(nome: 'João', vida: 10, escudo: 10, velocidade: 10);
      expect(personagem.vida, 10);
      personagem.defender(9);
      expect(personagem.vida, 10);
    });

    test('A vida não pode ser menor que zero', () {
      final personagem = Personagem(nome: 'João', vida: 10, escudo: 5, velocidade: 10);
      expect(personagem.vida, 10);
      personagem.defender(20);
      expect(personagem.vida, 0);
    });

    test('Deve verificar corretamente se está vivo (morto)', () {
      final personagem = Personagem(nome: 'João', vida: 10, escudo: 5, velocidade: 10);
      expect(personagem.vida, 10);
      personagem.defender(20);
      expect(personagem.estaVivo(), false);
    });

    test('Deve verificar corretamente se está vivo (vivo)', () {
      final personagem = Personagem(nome: 'João', vida: 10, escudo: 10, velocidade: 10);
      expect(personagem.vida, 10);
      personagem.defender(15);
      expect(personagem.estaVivo(), true);
    });

    test('Deve aplicar ataque corretamente ao oponente', () {
      final atacante = Personagem(nome: 'Maria', vida: 10, escudo: 10, velocidade: 10);
      final defensor = Personagem(nome: 'João', vida: 10, escudo: 10, velocidade: 10);

      atacante.atacar(defensor, 15);

      expect(defensor.vida, 5);
    });
  });
}
