class Personagem {
  final String _nome;
  int _vida;
  final int _escudo;
  final int _velocidade;

  Personagem(this._nome, this._vida, this._escudo, this._velocidade);

  String get nome => _nome;
  int get vida => _vida;
  int get escudo => _escudo;
  int get velocidade => _velocidade;

  void defender(int dano) {
    var danoReal = dano - _escudo;
    if (danoReal > 0) {
      _vida -= danoReal;
    }
    if (_vida < 0) {
      _vida = 0;
    }
  }

  bool estaVivo() {
    return _vida > 0;
  }

  void atacar(Personagem oponente, int dano) {
    print('Nome do atacante $_nome');
    print('Nome oponente ${oponente._nome}');
    oponente.defender(dano);
  }

  void exibirStatus() {
    print('Nome: $_nome - Vida: $_vida ');
  }
}
