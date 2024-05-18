N = gets.to_i
sqrt = Math.sqrt(N).to_i
ans = 0
i = 1
while i <= sqrt
  ans += N/i
  i += 1
end
puts ans * 2 - sqrt**2