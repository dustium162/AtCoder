N,K = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
sums = [0]
hash = {}
hash[as[0]] = 1
as.each do |a|
  b = (sums[-1] || 0) + a
  sums << b
  hash[K-b] = 0 unless hash[K-b]
  hash[K-b] += 1
end
p hash
p sums
as.each do |a|
  puts hash[a]
end
puts as.filter_map {|a| hash[a]}.sum
