abstract class Arquetipo {
  final int _bonusVida;
  final int _bonusAtaque;
  final int _bonusEscudo;
  final int _bonusVelocidade;

  Arquetipo({
    required bonusVida, 
    required bonusAtaque,
    required bonusEscudo,
    required bonusVelocidade
  }): _bonusVida = bonusVida, 
      _bonusAtaque = bonusAtaque,
      _bonusEscudo = bonusEscudo,
      _bonusVelocidade = bonusVelocidade; 

  int get bonusVida => _bonusVida;
  int get bonusAtaque => _bonusAtaque;
  int get bonusEscudo => _bonusEscudo;
  int get bonusVelocidade => _bonusVelocidade;

  void habilidadeEspecial();

}