package main

import (
	"fmt"
	"math"
	"math/rand"
	"time"
)

func solveQuadratic(a, b, c float64) {
	delta := b*b - 4*a*c

	if delta < 0 {
		fmt.Println("A equação não possui raízes reais.")
		return
	}

	// Cálculo das raízes
	x1 := (-b + math.Sqrt(delta)) / (2 * a)
	x2 := (-b - math.Sqrt(delta)) / (2 * a)

	fmt.Printf("As raízes da equação são: x1 = %.2f e x2 = %.2f\n", x1, x2)
}

// Função para calcular o fatorial de um número
func factorial(n int) int {
	if n == 0 {
		return 1
	}
	result := 1
	for i := 2; i <= n; i++ {
		result *= i
	}
	return result
}

func main() {
	var a, b, c float64
	fmt.Println("Digite os valores de a, b e c para a equação do segundo grau:")
	fmt.Scan(&a, &b, &c)

	solveQuadratic(a, b, c)

	rand.Seed(time.Now().UnixNano())
	randomNumber := rand.Intn(10) // Número aleatório entre 0 e 9
	fmt.Printf("Número aleatório gerado: %d\n", randomNumber)
	fmt.Printf("Fatorial de %d é: %d\n", randomNumber, factorial(randomNumber))
}
