fn preencher_vetor(valor: i32) -> [i32; 10] {
    let mut vetor = [0; 10]; 
    for i in 0..vetor.len() {
        vetor[i] = valor * i as i32; 
    }

    vetor
}

fn main() {
    println!("Digite o valor a ser multiplicado pelos índices:");

    let mut entrada = String::new();
    std::io::stdin().read_line(&mut entrada).expect("Falha ao ler a entrada");

    let valor: i32 = entrada.trim().parse().expect("Por favor, digite um número válido");

    let vetor = preencher_vetor(valor);

    println!("Vetor preenchido:");
    for (indice, valor) in vetor.iter().enumerate() {
        println!("Índice {}: {}", indice, valor);
    }
}
