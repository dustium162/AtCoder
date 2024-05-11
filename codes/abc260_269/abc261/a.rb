l1,r1,l2,r2 = gets.split.map(&:to_i)
arr = Array.new(101) { false }
i = 0
while i <= 100
  arr[i] = true if (l1 <= i && i <= r1) && (l2 <= i && i <= r2)
  i += 1
end
puts [arr.count(true) - 1, 0].max