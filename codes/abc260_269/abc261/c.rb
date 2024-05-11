N = gets.to_i
hash = {}
N.times do
  s = gets.chomp
  if hash[s]
    hash[s] += 1
    puts "#{s}(#{hash[s]})"
  else
    hash[s] = 0
    puts s
  end
end