arr = gets.split.map(&:to_i).sort
if arr.uniq.size <= 2
  puts arr[1] == arr[0] ? arr[2] : arr[0]
else
  puts 0
end
