S = gets.chomp.chars
ans = []
S.reverse.each do |c|
  if c == "9"
    ans << "6"
  elsif c == "6"
    ans << "9"
  else
    ans << c
  end
end
puts ans.join