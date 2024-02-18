N = gets.to_i
ans = [1]
(N-1).times do |i|
  ans = ans + [i+2] + ans
end
puts ans.join(" ")