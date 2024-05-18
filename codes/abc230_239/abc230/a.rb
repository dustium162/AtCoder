n = gets.to_i
n += 1 if n>=42
if n > 9
  puts "AGC0#{n}"
else
  puts "AGC00#{n}"
end