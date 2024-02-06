N = gets.to_i
if N >= -2**31 && N < 2**31
  puts "Yes"
else
  puts "No"
end
