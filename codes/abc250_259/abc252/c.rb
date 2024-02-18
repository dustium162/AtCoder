N = gets.to_i
list = (1..N).map{gets.chomp.chars.map(&:to_i)}
ans = 10**12
num = 0
while num < 10
  # numで揃える
  counter = Array.new(10) {0}
  list.each do |slot|
    i = 0
    while i < 10
      counter[i] += 1 if slot[i] == num
      i += 1
    end
  end
  max = counter.max
  i = 9
  while i >= 0
    break if counter[i] == max
    i -= 1
  end
  sum = i + (max-1)*10
  ans = sum if ans > sum
  num += 1
end
puts ans