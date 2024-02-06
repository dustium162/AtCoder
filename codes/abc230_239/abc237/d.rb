N = gets.to_i
ans = [N]
gets.chomp.chars.reverse.each_with_index do |c,id|
  if c == "L"
    ans.push(N-id-1)
  else
    ans.unshift(N-id-1)
  end
end
puts ans.join(" ")