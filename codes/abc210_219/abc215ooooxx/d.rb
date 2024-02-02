# エラトステネスのふるい
# faster_prime
require 'faster_prime'
N,M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
hash = {}
as.each do |a|
  FasterPrime.prime_division(a).each {|base,_exp| hash[base] = true}
end
check = Array.new(M) {false}
hash.keys.each do |key|
  k = 1
  while k * key <= M
    check[k*key-1] = true
    k += 1
  end
end
ans = []
i = 0
while i < M
  ans << i+1 unless check[i]
  i += 1
end
puts ans.size
puts ans