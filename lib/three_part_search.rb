# ABC279D
A,B = gets.split.map(&:to_i)
def f(n)
  B*n + A/Math.sqrt(n+1)
end
l = 0
r = 10**20
while r-l > 2
  m1 = (l*2+r) / 3
  m2 = (l+r*2) / 3
  if f(m1) > f(m2)
    l = m1
  else
    r = m2
  end
end
ans = A
i = l
while i <= r
  ans = f(i) if ans > f(i)
  i += 1
end 
puts ans