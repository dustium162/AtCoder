N = gets.to_i
ts = gets.split.map(&:to_i)
list = [0]
ts.each do |t|
  hash = {}
  list.each do |from|
    hash[from] = true
    hash[t+from] = true
  end
  list = hash.keys
end
sum = ts.sum
ans = list.min_by{|num| (num-sum/2).abs}
puts [ans,sum-ans].max