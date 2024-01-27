# 経路復元
N = gets.to_i
as = gets.split.map{|c|c.to_i%200}
# dp[i][j][selected]はi番目まで見たときの和を200で割ったあまりがjであり、
# 少なくともひとつの要素を選択済みかどうかがselectedのようなものの場合の数と2の大きくない方
dp = Array.new(N) { Array.new(200) { Array.new(2) { 0 } } }
dp[0][as[0]][1] = 1
dp[0][0][0] = 1
i = 1
while i < N
  j = 0
  while j < 200
    dp[i][j][0] = [dp[i][j][0] + dp[i-1][j][0],2].min
    dp[i][j][1] = [dp[i][j][1] + dp[i-1][j][1],2].min
    dp[i][j][1] = [dp[i][j][1] + dp[i-1][(j-as[i])%200][0],2].min
    dp[i][j][1] = [dp[i][j][1] + dp[i-1][(j-as[i])%200][1],2].min
    j += 1
  end
  i += 1
end
i = 0
while i < N
  j = 0
  while j < 200
    break if dp[i][j][1] == 2
    j += 1
  end
  break unless j == 200
  i += 1
end
if i == N
  puts "No"
else
  b = [as[i]]

  bj = (j-as[i]) % 200
  c = []
  cj = 0
  while i >= 0
    j = 0
    while j > 200
      dp[i][j][1] == dp[]
      j += 1
    end
    i -= 1
  end
end