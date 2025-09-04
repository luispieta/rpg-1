abstract class Raca {
  final int _bonusVida;
  final int _bonusAtaque;
  final int _bonusEscudo;

  Raca({
    required bonusVida, 
    required bonusAtaque,
    required bonusEscudo,
    required bonusVelocidade
  }): _bonusVida = bonusVida, 
      _bonusAtaque = bonusAtaque,
      _bonusEscudo = bonusEscudo;

  int get bonusVida => _bonusVida;
  int get bonusAtaque => _bonusAtaque;
  int get bonusEscudo => _bonusEscudo;

}