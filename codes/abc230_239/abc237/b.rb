H=gets.to_i
grid=[];H.times{grid<<gets.split.map(&:to_i)}
grid.transpose.each{|r|puts r.join(" ")}
