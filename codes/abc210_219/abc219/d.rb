N = gets.to_i
X,Y = gets.split.map(&:to_i)
list = []
N.times do
  list << gets.split.map(&:to_i)
end
dp = Array.new(N) { Array.new(X+1) { Array.new(Y+1) } }
dp[0][0][0] = 0
dp[0][list[0][0]][list[0][1]] = 1
i = 1
while i < N
  x,y = list[i]
  xx = 0
  while xx <= X
    yy = 0
    while yy <= Y
      if dp[i-1][xx][yy]
        dp[i][xx][yy] = dp[i-1][xx][yy]
        xxx = [xx+x,X].min
        yyy = [yy+y,Y].min
        if !dp[i][xxx][yyy] || dp[i][xxx][yyy] > dp[i-1][xx][yy] + 1
          dp[i][xxx][yyy] = dp[i-1][xx][yy] + 1
        end
      end
      yy += 1
    end
    xx += 1
  end
  i += 1
end
puts dp[-1][-1][-1] || -1