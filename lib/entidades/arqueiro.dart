
import 'package:rpg_v2/entidades/arquetipo.dart';

class Arqueiro extends Arquetipo{
  Arqueiro({
    required super.bonusVida, 
    required super.bonusAtaque, 
    required super.bonusEscudo, 
    required super.bonusVelocidade
  });

  @override
  void habilidadeEspecial() {
  }

}