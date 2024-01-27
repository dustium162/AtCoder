# Priority Queue
require "ac-library-rb/priority_queue"
include AcLibraryRb
queue = PriorityQueue.min([])
Q = gets.to_i
offset = 0
Q.times do
  q,x = gets.split.map(&:to_i)
  if q == 1
    queue << x - offset
  elsif q == 2
    offset += x
  elsif q == 3
    puts queue.pop + offset
  end
end