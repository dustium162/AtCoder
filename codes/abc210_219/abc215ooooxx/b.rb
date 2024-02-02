N = gets.to_i
k = 60
while 2**k > N
  k -= 1
end
puts k