N = gets.to_i
as = gets.split.map(&:to_i)
hash = {}
as.each do |a|
  hash[a] = 0 unless hash[a]
  hash[a] += 1
end
ans = N*(N-1)/2
hash.each {|_,v| ans -= v*(v-1)/2}
puts ans