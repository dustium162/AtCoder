N = gets.to_i
as = gets.split.map(&:to_i)
ans = N*(N-1)*(N-2)/6
as.tally.each do |_,v|
  ans -= v*(v-1)*(v-2)/6 + (v*(v-1)/2) * (N-v)
end
puts ans