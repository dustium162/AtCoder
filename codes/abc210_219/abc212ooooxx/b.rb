password = gets.chomp
invalids = []
(0..9).each {|i| invalids << i.to_s*4}
i = 0
while i < 10
  s = ""
  j = 0
  while j < 4
    s += ((i+j)%10).to_s
    j += 1
  end
  invalids << s
  i += 1
end
puts invalids.include?(password) ? "Weak" : "Strong"