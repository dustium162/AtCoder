PRIME = 998244353
N = gets.to_i
hash = {}
("A".."J").to_a.each_with_index {|c,id| hash[c] = id}
S = gets.chomp.chars.map{|c| hash[c]}
dp = Array.new(N) { Array.new(1<<10) { Array.new(10) {0} } }
dp[0][1<<S[0]] = 1
dp[0][0] = 1
i = 1
while i < N
  d = S[i]
  j = 0
  while j < 1<<10
    dp[i][j] = dp[i-1][j]
    if ((1<<d) & j) == 0
      dp[i][j|(1<<d)] = (dp[i][j] + dp[i-1][j]) % PRIME
    end
    j += 1
  end
  i += 1
end
