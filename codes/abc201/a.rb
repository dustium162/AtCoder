A1,A2,A3 = gets.split.map(&:to_i).sort
puts A2*2 == A1+A3 ? "Yes" : "No"
