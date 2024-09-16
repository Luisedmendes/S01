class Animal {
  
  constructor(nome, idade, especie) {
    this.nome = nome;
    this.idade = idade;
    this.especie = especie;
  }

  printInfo() {
    console.log('Nome: ', this.nome);
    console.log('Idade: ', this.idade);
    console.log('Especie: ', this.especie);
  }
}

class Cachorro extends Animal {
  #raça;
  constructor(nome, idade, especie) {
    super(nome, idade, especie)
  }
  setRaça(name) {
    this.#raça = name;
  }

  printInfo() {
    super.printInfo();
    console.log('Raça: ', this.#raça || 'Vira lata');
  }
}

class Gato extends Animal {
  cores = []
  constructor(nome, idade, especie, cores) {
    super(nome, idade, especie)
    this.cores = cores;
  }

  printInfo() {
    super.printInfo()
    this.cores.map(cor => console.log(cor));
  }
}

const cachorro1 = new Cachorro('Duque', 4, 'Dogus');
const cachorro2 = new Cachorro('Rodolfo', 2, 'Dogus');
const cachorro3 = new Cachorro('Thor', 6, 'Dogus');

const gato1 = new Gato('Jerry', 1, 'Gatus', cores=['PRETO', 'AZUL']);
const gato2 = new Gato('Valesca Popozuda', 2, 'Gatus', cores=['PRETO', 'VERMELHO']);
const gato3 = new Gato('Geize Arruda', 5, 'Gatus', cores=['PRETO', 'AZUL']);

cachorro1.setRaça('Pastor Alemão')

cachorro1.printInfo();
cachorro2.printInfo();
cachorro3.printInfo();

gato1.printInfo();
gato2.printInfo();
gato3.printInfo();