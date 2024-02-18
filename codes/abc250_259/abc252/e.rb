# Dijkstra法
# C++変換でAC
require 'ac-library-rb/priority_queue'
include AcLibraryRb
N,M = gets.split.map(&:to_i)
queue = PriorityQueue.new {|x,y| x[1] < y[1]}
dists = Array.new(N) {1<<60}
graph = Array.new(N) {[]}
ans = []
M.times do |i|
  a,b,c = gets.split.map(&:to_i)
  graph[a-1] << [b-1,c,i+1]
  graph[b-1] << [a-1,c,i+1]
end
queue << [0,0]
ans = Array.new(N)
dists[0] = 0
while v = queue.pop
  v_id,dist,used_b_id = v
  ans[v_id] ||= used_b_id
  graph[v_id].each do |nv|
    nv_id,c,b_id = nv
    d = dist + c
    if dists[nv_id] > d
      dists[nv_id] = d
      queue << [nv_id,d,b_id]
    end
  end
end
puts ans.compact.join(" ")