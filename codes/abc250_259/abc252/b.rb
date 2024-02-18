N,K = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
max = as.max
ids = as.filter_map.with_index do |a,id|
  id + 1 if a == max
end
puts (ids & bs).empty? ? "No" : "Yes"