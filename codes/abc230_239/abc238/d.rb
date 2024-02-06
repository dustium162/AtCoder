# ビット演算
T = gets.to_i
T.times do
  a,s = gets.split.map(&:to_i)
  puts 2*a <= s && (s-2*a) & a == 0 ? "Yes" : "No"
end
