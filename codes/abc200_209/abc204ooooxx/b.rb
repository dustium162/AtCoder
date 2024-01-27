N = gets.to_i
as = gets.split.map(&:to_i)
ans = 0
as.each do |a|
  ans += [a-10,0].max
end
puts ans