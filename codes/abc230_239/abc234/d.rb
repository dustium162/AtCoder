require 'ac-library-rb/priority_queue'
include AcLibraryRb
N,K = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)
queue = PriorityQueue.new { |x,y| x < y }
K.times { queue << ps.shift }
puts queue.top
ps.each do |num|
  if queue.top < num
    queue.pop
    queue << num
  end
  puts queue.top
end