# 未AC
# プリム法
# 最小全域木
require 'ac-library-rb/priority_queue'
include AcLibraryRb
N,M = gets.split.map(&:to_i)
queue = PriorityQueue.new {|x,y| x[2] < y[2]}
ans = 0
M.times do
  a,b,c = gets.split.map(&:to_i)
  ans += c
  queue << [a-1,b-1,c]
end
es = es.sort_by{|e| e[2]}
while e = es.shift
  a,b,c = e
  if !dsu.same?(a,b) || c < 0
    dsu.merge(a,b)
    ans -= c
  end
end
puts ans