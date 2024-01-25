gets
puts gets.split.map{|c| c.to_i % 200}.tally.map{|_,v| v*(v-1)/2}.sum