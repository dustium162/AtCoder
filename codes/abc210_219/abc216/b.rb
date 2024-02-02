N = gets.to_i
list = []
N.times { list << gets.chomp }
puts list.uniq.size == N ? "No" : "Yes"