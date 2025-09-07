import 'package:rpg_v2/entidades/heroi.dart';
import 'package:rpg_v2/entidades/personagem.dart';
import 'package:test/test.dart';

void main() {
  group("Testes para Heroi", () {
    test("Deve criar um objeto(instaância) de Herói", () {
      final heroi = Heroi(
        reino: "reino",
        missao: "IR para o show do Cleiton rasta",
        nome: "Cabeça de gelo",
        vida: 19,
        escudo: 23,
        velocidade: 2, 
        raca: null,
        arquetipo: null
      ); 
      expect(heroi, isA<Heroi>());
      expect(heroi, isA<Personagem>());

    });
  });
}