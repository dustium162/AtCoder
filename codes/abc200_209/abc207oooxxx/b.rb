A,B,C,D = gets.split.map(&:to_i)
if B >= C*D
  puts -1
else
  puts (A+C*D-B-1)/(C*D-B)
end
