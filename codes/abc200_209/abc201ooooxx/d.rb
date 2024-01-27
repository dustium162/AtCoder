# MinMax法
# DP
H,W = gets.split.map(&:to_i)
grid = []
H.times { grid << gets.chomp.chars.map{|c|c=="+" ? 1 : -1} }
dp = Array.new(H) { Array.new(W) }
dp[-1][-1] = 0
r = H-1
while r >= 0
  c = W-1
  while c >= 0
    a = b = nil
    if (r + c) % 2 == 0
      a = dp[r+1][c] + grid[r+1][c] if r+1 < H
      b = dp[r][c+1] + grid[r][c+1] if c+1 < W
      dp[r][c] ||= [a,b].compact.max
    else
      a = dp[r+1][c] - grid[r+1][c] if r+1 < H
      b = dp[r][c+1] - grid[r][c+1] if c+1 < W
      dp[r][c] ||= [a,b].compact.min
    end
    c -= 1
  end
  r -= 1
end
if dp[0][0] == 0
  puts "Draw"
elsif dp[0][0] > 0
  puts "Takahashi"
else
  puts "Aoki"
end