import 'package:rpg_v2/entidades/dado.dart';
import 'package:rpg_v2/entidades/personagem.dart';

class Duelo {
  final Personagem _jogador1;
  final Personagem _jogador2;
  final Dado _dado;
  Personagem? _jogadorVez;
  Personagem? _oponente;

  Duelo({
    required Personagem jogador1,
    required Personagem jogador2,
    required Dado dado,
  }) : _jogador1 = jogador1,
       _jogador2 = jogador2,
       _dado = dado;

  Personagem? get jogadorVez => _jogadorVez;
  Personagem? get oponente => _oponente;

  void iniciar() {
    if (_jogador1.velocidade > _jogador2.velocidade) {
      _jogadorVez = _jogador1;
      _oponente = _jogador2;
    } else {
      _jogadorVez = _jogador2;
      _oponente = _jogador1;
    }
  }
}
