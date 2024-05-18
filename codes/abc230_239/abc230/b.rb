S = gets.chomp
s = "oxx" * 100
ssize = S.size
i = 0
found = false
while i < 200
  ok = true
  j = 0
  while j < ssize
    ok = false if S[j] != s[i+j]
    j += 1
  end
  found = true if ok
  i += 1
end
puts found ? "Yes" : "No"