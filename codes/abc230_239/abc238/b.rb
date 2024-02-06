N = gets.to_i
as = gets.split.map(&:to_i)
sums = [0]
as.each {|a| sums << (sums[-1] + a)% 360 }
sums.sort!
sums << 360
ans = 0
i = 0
while i <= N
  ans = sums[i+1] - sums[i] if ans < sums[i+1] - sums[i]
  i += 1
end
puts ans