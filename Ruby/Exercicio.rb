puts "Digite os valores de x e de y do primeiro ponto"
pontoAx = gets.chomp
pontoAy = gets.chomp
puts "Digite os valores de x e y do segundo ponto"
pontoBx = gets.chomp
pontoBy = gets.chomp
Distancia = ( ( ((pontoBx.to_f-pontoAx.to_f)**2) + ((pontoBy.to_f-pontoAy.to_f)**2) )**(0.5) )
print "A distância  é: "
puts "%.4f" % Distancia