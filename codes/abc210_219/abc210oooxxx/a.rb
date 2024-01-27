N,A,X,Y = gets.split.map(&:to_i)
puts [N,A].min * X + [N-A,0].max * Y