PRIME = 10**9+7
N,M = gets.split.map(&:to_i)
graph = Array.new(N) {[]}
M.times do
  a,b = gets.split.map(&:to_i)
  graph[a-1] << b-1
  graph[b-1] << a-1
end
dists = Array.new(N)
counts = Array.new(N) {0}
dists[0] = 0
counts[0] = 1
queue = [0]
while city = queue.shift
  graph[city].each do |next_city|
    if !dists[next_city]
      dists[next_city] = dists[city] + 1
      counts[next_city] = (counts[next_city] + counts[city]) % PRIME
      queue << next_city
    elsif dists[next_city] == dists[city] + 1
      counts[next_city] = (counts[next_city] + counts[city]) % PRIME
    end
  end
end
puts counts[-1]
