N = gets.to_i
perms = gets.split.map(&:to_i)
ans = Array.new(N)
i = 0
while i < N
  ans[perms[i]-1] = i+1
  i += 1
end
puts ans.join(" ")