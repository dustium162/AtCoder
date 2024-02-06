A,B,C,D,E,F,X = gets.split.map(&:to_i)
a = b = t = 0
while t < X
  a += t % (A+C) < A ? B : 0
  b += t % (D+F) < D ? E : 0
  t += 1
end
puts a == b ? "Draw" : (a > b ? "Takahashi" : "Aoki")