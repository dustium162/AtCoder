A,B,C = gets.split.map(&:to_i)
if A <= (B/C)*C
  puts (B/C)*C
else
  puts -1
end
