hands = gets.split.map(&:to_i)
if hands.uniq.size == 1
  puts hands[0]
else
  puts 3-hands.sum
end