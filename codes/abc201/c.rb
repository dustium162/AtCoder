S = gets.chomp.chars
def check(s)
  arr = s.chars.map(&:to_i)
  ok = true
  S.each_with_index do |c,id|
    if c == "x"
      ok = false if arr.include?(id)
    elsif c == "o"
      ok = false unless arr.include?(id)
    end
  end
  ok
end
ans = 0
i = 0
while i < 10000
  s = ("000" + i.to_s)[-4..-1]
  ans += 1 if check(s)
  i += 1
end
puts ans
