import 'package:rpg_v2/entidades/Duelo.dart';
import 'package:rpg_v2/entidades/dado.dart';
import 'package:rpg_v2/entidades/personagem.dart';

void main() {
  final dado = Dado(20);
  final megaCavaleiro = Personagem(nome: 'Mega Cavaleiro', vida: 20, escudo: 5, velocidade: 10);
  final pekkaCaveleiro = Personagem(nome: 'Pekka Cavaleiro', vida: 10, escudo: 10, velocidade: 9);
  final duelo = Duelo(
    jogador1: megaCavaleiro,
    jogador2: pekkaCaveleiro,
    dado: dado,
  );
  duelo.iniciar();
}
