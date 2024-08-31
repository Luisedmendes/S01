use std::io;

fn main() {
    loop {
        println!("Digite o primeiro número:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Falha ao ler a entrada");
        let num1: f64 = num1.trim().parse().expect("Por favor, digite um número válido");

        println!("Digite o segundo número:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Falha ao ler a entrada");
        let num2: f64 = num2.trim().parse().expect("Por favor, digite um número válido");

        println!("Escolha a operação desejada:");
        println!("1. Somar");
        println!("2. Multiplicar");
        println!("Digite 1 ou 2:");

        let mut escolha = String::new();
        io::stdin().read_line(&mut escolha).expect("Falha ao ler a entrada");
        let escolha: u32 = escolha.trim().parse().expect("Por favor, digite uma opção válida");

        match escolha {
            1 => {
                let resultado = num1 + num2;
                println!("O resultado da soma é: {}", resultado);
            }
            2 => {
                let resultado = num1 * num2;
                println!("O resultado da multiplicação é: {}", resultado);
            }
            _ => println!("Escolha inválida. Tente novamente."),
        }

        println!("Deseja realizar outra operação? (s/n):");
        let mut resposta = String::new();
        io::stdin().read_line(&mut resposta).expect("Falha ao ler a entrada");
        let resposta = resposta.trim().to_lowercase();

        if resposta != "s" {
            println!("Saindo do programa.");
            break;
        }
    }
}
