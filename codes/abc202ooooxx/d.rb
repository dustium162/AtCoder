def factorial(n)
  i = 0
  k = 1
  while i < n
    k *= i+1
    i += 1
  end
  k
end
def combination(n,m)
  factorial(n) / (factorial(m) * factorial(n-m))
end
a,b,k = gets.split.map(&:to_i)
ans = ""
while a > 0 && b > 0
  if k > combination(a+b-1,a-1)
    k -= combination(a+b-1,a-1)
    ans += "b"
    b -= 1
  else
    ans += "a"
    a -= 1
  end
end
while a > 0
  ans += "a"
  a -= 1
end
while b > 0
  ans += "b"
  b -= 1
end
puts ans