N = gets.to_i
list = (1..N).map{gets.split}
ans = "Yes"
(0...N).each do |i|
  ans = "No" unless list[i].any? do |s|
    (0...N).all? do |j|
      i == j || !list[j].include?(s)
    end
  end
end
puts ans