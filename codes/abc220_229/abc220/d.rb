PRIME = 998244353
N = gets.to_i
as = gets.split.map(&:to_i)
dp = Array.new(10) { 0 }
dp[as[0]] = 1
(N-1).times do |i|
  new_dp = Array.new(10) { 0 }
  a = as[i+1]
  j = 0
  while j < 10
    new_dp[(j+a)%10] = (new_dp[(j+a)%10] + dp[j]) % PRIME
    new_dp[(j*a)%10] = (new_dp[(j*a)%10] + dp[j]) % PRIME
    j += 1
  end
  dp = new_dp.dup
end
puts dp