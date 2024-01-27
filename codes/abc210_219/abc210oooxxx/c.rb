N,K = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)
hash = {}
ans = 0
i = 0
while i < K
  c = cs[i]
  hash[c] = 0 unless hash[c]
  ans += 1 if hash[c] == 0
  hash[c] += 1
  i += 1
end
count = ans
while i < N
  hash[cs[i-K]] -= 1
  count -= 1 if hash[cs[i-K]] == 0
  c = cs[i]
  hash[c] = 0 unless hash[c]
  count += 1 if hash[c] == 0
  hash[c] += 1
  ans = count if ans < count
  i += 1
end
puts ans