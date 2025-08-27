import 'package:rpg_v2/entidades/Duelo.dart';
import 'package:rpg_v2/entidades/dado.dart';
import 'package:rpg_v2/entidades/personagem.dart';

void main() {
  final dado = Dado(20);
  final megaCavaleiro = Personagem('Mega Cavaleiro', 10, 5, 10);
  final pekkaCaveleiro = Personagem('Pekka Cavaleiro', 10, 5, 9);
  final duelo = Duelo(
    jogador1: megaCavaleiro,
    jogador2: pekkaCaveleiro,
    dado: dado,
  );
  duelo.iniciar();
}
