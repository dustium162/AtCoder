N = gets.to_i
points = []
hash = {}
N.times do
  x,y = gets.split.map(&:to_i)
  hash[x] = {} unless hash[x]
  hash[x][y] = true
  points << [x,y]
end
i = 0
ans = 0
while i < N-1
  xi,yi = points[i]
  j = i+1
  while j < N
    xj,yj = points[j]
    if xi != xj && yi != yj
      ans += 1 if hash[xi][yj] && hash[xj][yi]
    end
    j += 1
  end
  i += 1
end
puts ans/2