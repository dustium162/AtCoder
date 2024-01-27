N,M = gets.split.map(&:to_i)
graph = Array.new(N) {[]}
M.times do
  a,b = gets.split.map{|c|c.to_i-1}
  graph[a] << b
end
ans = 0
i = 0
while i < N
  queue = [i]
  visited = Array.new(N) {false}
  visited[i] = true
  while node = queue.shift
    graph[node].each do |next_node|
      unless visited[next_node]
        queue << next_node
        visited[next_node] = true
      end
    end
  end
  ans += visited.count(true)
  i += 1
end
puts ans