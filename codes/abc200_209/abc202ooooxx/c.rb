N = gets.to_i
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)
hash = {}
cs.each do |c|
  hash[bs[c-1]] = 0 unless hash[bs[c-1]]
  hash[bs[c-1]] += 1
end
ans = 0
as.each do |a|
  ans += hash[a] || 0
end
puts ans