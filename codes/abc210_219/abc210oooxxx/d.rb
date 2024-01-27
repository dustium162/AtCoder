H,W,C = gets.split.map(&:to_i)
costs = []
H.times { costs << gets.split.map(&:to_i) } 
dp = Array.new(H) { Array.new(W) {10**20} }
h = 0
while h < H
  w = 0
  while w < W
    c = costs[h][w]
    
    dp[h][w] = 
    w += 1
  end
end
puts dp.map{|row| row.min}.min