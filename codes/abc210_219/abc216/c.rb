N,M = gets.split.map(&:to_i)
degree = Array.new(N) {0}
graph = Array.new(N) {[]}
M.times do
  k = gets.to_i
  as = gets.split.map(&:to_i)
  i = 0
  while i < k-1
    graph[as[i]-1] << as[i+1]-1
    degree[as[i+1]-1] += 1
    i += 1
  end
end
queue = degree.filter_map.with_index{|deg,id| id if deg == 0}
while v = queue.shift
  graph[v].each do |nv|
    degree[nv] -= 1
    queue << nv if degree[nv] == 0
  end
end
puts degree.all?(0) ? "Yes" : "No"
