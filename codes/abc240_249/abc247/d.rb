Q = gets.to_i
queue = []
Q.times do
  q,a,b = gets.split.map(&:to_i)
  if q == 1
    if queue != [] && queue.length >[-1][0] == a
      queue[-1][1] += b
    else
      queue << [a,b]
    end
  else
    sum = 0
    while queue[0][1] <= a
      c,d = queue.shift
      sum += c*d
      a -= d
      break if queue == []
    end
    unless queue == []
      sum += queue[0][0] * a
      queue[0][1] -= a
      queue.shift if queue[0][1] == 0
    end
    puts sum
  end
end