# Programa para calcular a média de 3 números

puts "Digite o primeiro número:"
num1 = gets.chomp.to_f

puts "Digite o segundo número:"
num2 = gets.chomp.to_f

puts "Digite o terceiro número:"
num3 = gets.chomp.to_f

media = (num1 + num2 + num3) / 3

puts "A média dos três números é: #{media}"

# Hierarquia de classes para carros

class Carro
  def descrever
    "Este é um carro."
  end
end

class CarroEsportivo < Carro
  def descrever
    "Este é um carro esportivo."
  end
end

class CarroSedan < Carro
  def descrever
    "Este é um carro sedan."
  end
end

# Criando instâncias das classes
carro_comum = Carro.new
carro_esportivo = CarroEsportivo.new
carro_sedan = CarroSedan.new

# Chamando o método descrever em cada instância
puts carro_comum.descrever
puts carro_esportivo.descrever
puts carro_sedan.descrever
