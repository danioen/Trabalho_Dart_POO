class Produto {

 //Atributos
  String nome;
  double _preco = 0.0; // atributo privado

  // Construtor
  Produto(this.nome, double preco) {
    this.preco = preco; // usa o setter para validar
  }

  // Getter
  double get preco => _preco;

  // Setter com validação
  set preco(double valor) {
    if (valor < 0) {
      print("Preço inválido! Definido como 0.0");
      _preco = 0.0;
    } else {
      _preco = valor;
    }
  }

  // Método para exibir informações
  void exibir() {
    print("Produto: $nome | Preço: R\$ ${_preco.toStringAsFixed(2)}");
  }
}

void main() {
  // Criando produtos
  var p1 = Produto("Monitor", 900.00);
  var p2 = Produto("Headset", -80.00); // preço inválido → vira 0

  // Atualizando preço via setter
  p2.preco = 220.00;

  // Exibindo
  p1.exibir();
  p2.exibir();
}
