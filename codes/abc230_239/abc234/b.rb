N = gets.to_i
list = (1..N).map { gets.split.map(&:to_i) }
ans = -1
i = 0
while i < N-1
  xi,yi = list[i]
  j = i+1
  while j < N
    xj,yj = list[j]
    d = Math.sqrt((xi-xj)**2 + (yi-yj)**2)
    ans = d if ans < d
    j += 1
  end
  i += 1
end
puts ans