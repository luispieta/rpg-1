class Personagem {
  String nome;
  int vida;
  int escudo;
  int velocidade;

  Personagem(this.nome, this.vida, this.escudo, this.velocidade);

  void defender(int dano) {
    var danoReal = dano - escudo;
    if (danoReal > 0) {
      vida -= danoReal;
    }
    if (vida < 0) {
      vida = 0;
    }
  }

  bool estaVivo() {
    return vida > 0;
  }

  void atacar(Personagem oponente, int dano) {
    print('Nome do atacante $nome');
    print('Nome oponente ${oponente.nome}');
    oponente.defender(dano);
  }
}
