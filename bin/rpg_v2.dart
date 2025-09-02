import 'package:rpg_v2/entidades/Duelo.dart';
import 'package:rpg_v2/entidades/dado.dart';
import 'package:rpg_v2/entidades/heroi.dart';
import 'package:rpg_v2/entidades/personagem.dart';

void main() {
  final dado = Dado(20);
  final megaCavaleiro = Heroi(
    nome: 'Mega Cavaleiro',
    vida: 10,
    escudo: 5,
    velocidade: 10,
    reino: 'não tem, sem teto, toco de charuto',
    missao: 'matar a peka',
  );
  final pekkaCaveleiro = Personagem(
    nome: 'Pekka Cavaleiro',
    vida: 10,
    escudo: 5,
    velocidade: 9,
  );
  final duelo = Duelo(
    jogador1: megaCavaleiro,
    jogador2: pekkaCaveleiro,
    dado: dado,
  );
  duelo.iniciar();
}
