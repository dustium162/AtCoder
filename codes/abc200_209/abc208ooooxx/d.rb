# ワーシャルフロイド
# C++変換でAC
N,M = gets.split.map(&:to_i)
dists = Array.new(N*N) { 10**9 }
(0...N).each {|i| dists[i*N+i] = 0}
M.times do
  a,b,c = gets.split.map(&:to_i)
  dists[(a-1)*N+b-1] = c
end
ans = 0
k = 0
while k < N
  i = 0
  while i < N
    j = 0
    while j < N
      sum = dists[i*N+k] + dists[k*N+j]
      dists[i*N+j] = sum if dists[i*N+j] > sum
      ans += dists[i*N+j] unless dists[i*N+j] == 10**9
      j += 1
    end
    i += 1
  end
  k += 1
end
puts ans
