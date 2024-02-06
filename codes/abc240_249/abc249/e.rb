# 解けてない(間に合わない・理解もしていない)
# N,P = gets.split.map(&:to_i)
# dp = Array.new(N+1) { Array.new(N+1) {0} }
# sum = Array.new(N+1) { Array.new(N+1) {0} }
# dp[0][0] = (25.pow(P - 2, P) * 26) % P
# ten = [1, 10, 100, 1000, 10000, 100000]
# (1..N).each { |i| sum[0][i] = dp[0][0] }
# i = 1
# while i <= N
#   j = 1
#   while j <= N
#     (1..4).each do |k|
#       next if i-k-1 < 0

#       x = [j-ten[k-1]+1, 0].max
#       y = [j-ten[k]+1, 0].max
#       dp[i][j] = (dp[i][j] + (sum[i-k-1][x]-sum[i-k-1][y]+P)*25) % P
#     end
#     sum[i][j+1] = (sum[i][j]+dp[i][j]) % P
#     j += 1
#   end
#   i += 1
# end
# ans = 0
# (1...N).each { |i| ans = (ans + dp[i][N]) % P }
# puts ans
