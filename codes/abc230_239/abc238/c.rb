PRIME = 998244353
N = gets.to_i
ans = 0
d = 1
while 10**d <= N
  ans = (ans + 9 * 10**(d-1) * (9 * 10**(d-1) + 1) / 2) % PRIME
  d += 1
end
ans = (ans + (N - 10**(d-1) + 1) * (N - 10**(d-1) + 2) / 2) % PRIME
puts ans
