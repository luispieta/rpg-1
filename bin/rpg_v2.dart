import 'package:rpg_v2/entidades/Duelo.dart';
import 'package:rpg_v2/entidades/arqueiro.dart';
import 'package:rpg_v2/entidades/dado.dart';
import 'package:rpg_v2/entidades/guerreiro.dart';
import 'package:rpg_v2/entidades/heroi.dart';
import 'package:rpg_v2/entidades/humano.dart';
import 'package:rpg_v2/entidades/monstro.dart';
import 'package:rpg_v2/entidades/orc.dart';

void main() {
  final dado = Dado(20);
  final humano = Humano(bonusVida: 5, bonusAtaque: 3, bonusEscudo: 2);
  final arqueiro = Arqueiro(bonusVida: 10, bonusAtaque: 5, bonusEscudo: 15, bonusVelocidade: 3);
  final megaCavaleiro = Heroi(
    nome: 'Mega Cavaleiro', 
    vida: 20, 
    escudo: 5, 
    velocidade: 10,
    reino: "numa casas muito engraçada, não tinha teto, não tinha nada",
    missao: "matar o matador dos matadores",
    raca: humano,
    arquetipo: arqueiro
  );

  final orc = Orc(bonusVida: 10, bonusAtaque: 8, bonusEscudo: 5);
  final guerreiro = Guerreiro(bonusVida: 6, bonusAtaque: 5, bonusEscudo: 4, bonusVelocidade: 5);
  final pekkaCaveleiro = Monstro(
    nome: 'Mostro ruim', 
    vida: 10, 
    escudo: 10, 
    velocidade: 13,
    origem: "Origem da terra",
    tipoCriatura: "Mágica",
    raca: orc,
    arquetipo: guerreiro
  );
  
  final duelo = Duelo(
    jogador1: megaCavaleiro,
    jogador2: pekkaCaveleiro,
    dado: dado,
  );
  duelo.iniciar();
}
