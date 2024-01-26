A,B = gets.split.map(&:to_i)
puts (A..6*A).include?(B) ? "Yes" : "No"