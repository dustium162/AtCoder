# Priority Queue
require "ac-library-rb/priority_queue"
include AcLibraryRb
N = gets.to_i
queue = PriorityQueue.new { |a,b| a[0] <= b[0] }
ss = gets.split.map(&:to_i)
gets.split.map(&:to_i).each_with_index {|t,id| queue << [t,id]}
ans = Array.new(N)
while event = queue.pop
  time,id = event
  unless ans[id]
    ans[id] = time
    queue << [time+ss[id],(id+1)%N]
  end
end
puts ans