import 'package:rpg_v2/entidades/personagem.dart';

class Monstro extends Personagem{

  final String _origem;
  final String _tipoCriatura;

  String get origem => _origem;
  String get tipoCriatura => _tipoCriatura;

  Monstro({
    required super.nome,
    required super.vida,
    required super.escudo,
    required super.velocidade,
    required String origem,
    required String tipoCriatura
  }): _origem = origem, _tipoCriatura = tipoCriatura;

}