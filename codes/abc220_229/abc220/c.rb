N = gets.to_i
as = gets.split.map(&:to_i)
x = gets.to_i
sum = as.sum
ans = (X / sum) * N
x %= sum
as.each do |a|
  break if x < 0

  ans += 1
  x -= a
end
puts ans