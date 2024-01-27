S,T = gets.split.map(&:to_i)
ans = 0
a = 0
while a <= S
  b = 0
  while a + b <= S
    c = 0
    while a + b + c <= S
      ans += 1 if a*b*c <= T
      c += 1
    end
    b += 1
  end
  a += 1
end
puts ans