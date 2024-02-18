require 'ac-library-rb/priority_queue'
include AcLibraryRb
N,L = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort
queue = PriorityQueue.new
queue << L
ans = 0
while bread = queue.pop
  ans += bread
  break if as == []
  queue << bread - as.pop
end
puts ans