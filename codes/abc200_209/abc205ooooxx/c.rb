A,B,C = gets.split.map(&:to_i)
c = (C % 2 == 0 ? 2 : 1)
if A.pow(c) == B.pow(c)
  puts "="
elsif A.pow(c) < B.pow(c)
  puts "<"
else
  puts ">"
end