# 尺取り法
N,M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort
bs = gets.split.map(&:to_i).sort
i = 0
j = 0
ans = 10**18
while i < N && j < M
  if as[i] < bs[j]
    d = bs[j] - as[i]
    ans = d if ans > d
    i += 1
  else
    d = as[i] - bs[j]
    ans = d if ans > d
    j += 1
  end
end
# while i < N
#   d = (as[i] - bs[-1]).abs
#   ans = d if ans > d
#   i += 1
# end
# while j < M
#   d = (as[-1] - bs[j]).abs
#   ans = d if ans > d
#   j += 1
# end
puts ans