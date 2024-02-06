N,M,K = gets.split.map(&:to_i)
PRIME = 998244353
# dp[i][j]は長さiの列であって和がjであるような列の個数
dp = Array.new(N) { Array.new(N*M+1) {0} }
(1..M).each{|j| dp[0][j] = 1}
(1...N).each do |i|
  (0..N*M).each do |j|
    (1..M).each do |k|
      next if j-k < 0
      dp[i][j] = (dp[i][j] + dp[i-1][j-k]) % PRIME
    end
  end
end
puts dp[-1][0..K].sum % PRIME