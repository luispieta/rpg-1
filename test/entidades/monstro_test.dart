import 'package:rpg_v2/entidades/monstro.dart';
import 'package:rpg_v2/entidades/personagem.dart';
import 'package:test/test.dart';

void main() {
  group("Testes para Heroi", () {
    test("Deve criar um objeto(instaância) de Herói", () {
      final monstro = Monstro(
        origem: "reino",
        tipoCriatura: "Bicho feio",
        nome: "Cabeça de gelo",
        vida: 19,
        escudo: 23,
        velocidade: 2
      ); 
      expect(monstro, isA<Monstro>());
      expect(monstro, isA<Personagem>());

    });
  });
}