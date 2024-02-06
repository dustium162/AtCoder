a,B,K = gets.split.map(&:to_i)
ans = 0
while a < B
  a *= K
  ans += 1
end
puts ans