N = gets.to_i
puts gets.split.map.with_index { |a,id| [a.to_i, id] }.sort[-2][1] + 1
