price = gets.to_i
list = [1]
9.times { |i| list << list[-1] * (i+2) }
ans = 0
list.reverse.each do |coin|
  ans += price / coin
  price %= coin
end
puts ans