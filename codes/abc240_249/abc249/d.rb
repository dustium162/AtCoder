N = gets.to_i
as = gets.split.map(&:to_i).tally
max = as.keys.max
ans = 0
as.each do |key,val|
  c = 1
  while c <= max/key
    ans += val * as[key*c] * as[c] if as[c] && as[key*c]
    c += 1
  end
end
puts ans