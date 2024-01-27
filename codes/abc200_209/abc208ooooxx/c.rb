N,K = gets.split.map(&:to_i)
as = gets.split.map.with_index do |a,id|
  [a.to_i,id]
end.sort_by {|a| a[0]}
ans = K/N
k = K%N
anss = Array.new(N)
as.each do |pair|
  _a,id = pair
  if k > 0
    anss[id] = ans + 1
    k -= 1
  else
    anss[id] = ans
  end
end
puts anss