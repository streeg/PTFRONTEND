puts "Digite um valor de corte para os números naturais."
n = gets.chomp.to_i
array2 =((1..n).to_a.select!{|x| x.odd?})
puts array2