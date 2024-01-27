N = gets.to_i
S = gets.chomp.chars
t = true
S.each do |c|
  break if c == "1"
  t = !t
end
puts t ? "Takahashi" : "Aoki"
