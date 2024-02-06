require 'ac-library-rb/priority_queue'
N,M = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)
graph = Array.new(N) {Array.new(2)}
M.times do
  x,y = gets.split.map(&:to_i)
  graph[x-1] << [y-1, [hs[y] - hs[x], 0].max]
  graph[y-1] << [x-1, [hs[x] - hs[y], 0].max]
end
dists = Array.new(N) { 10**20 }
dists[0] = 0
ans = 0
queue = PriorityQueue.new
i = 0
while i < N
  v = queue.pop
  # while dists
  i += 1
end
puts ans
