s = gets.chomp.chars
if s.all?("a")
  puts "Yes"
else
  l = r = 0
  l += 1 while s[l] == "a"
  r += 1 while s[s.size-r-1] == "a"
  ([r-l,0].max).times {s.unshift("a")}
  puts s == s.reverse ? "Yes" : "No"
end