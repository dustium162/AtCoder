ts = gets.split.map(&:to_i)
dp = Array.new(N) { Array.new(ts.sum+1) {false} }
dp[0][0] = true
dp[0][ts[0]] = true
i = 1
while i < N
  j = 0
  while j <= ts.sum
    if dp[i-1][j]
      dp[i][j+ts[i]] = true
      dp[i][j] = true
    end
    j += 1
  end
  i += 1
end
i = (ts.sum+1)/2
while !dp[-1][i]
  i += 1
end
puts i