N,Q = gets.split.map(&:to_i)
graph = Array.new(N) {[]}
(N-1).times do
  a,b = gets.split.map{|c|c.to_i-1}
  graph[a] << b
  graph[b] << a
end
queue = [[0,0]]
dists = Array.new(N)
while node = queue.shift
  id,d = node
  dists[id] = d
  graph[id].each do |nv|
    unless dists[nv]
      queue << [nv,d+1]
    end
  end
end
Q.times do
  c,d = gets.split.map{|c|c.to_i-1}
  puts (dists[c] - dists[d]) % 2 == 0 ? "Town" : "Road"
end