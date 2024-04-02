list = [0]
("1".."9").each do |n|
  (1..18).each {|j| list << (n*j).to_i}
end
d = 1
while d < 10
  a1 = 9
  while a1 >= 0
    tmp = [a1]
    while tmp[-1] >= 0
      tmp << tmp[-1] - d
      list << tmp.join.to_i
      list << tmp.join.reverse.to_i if tmp[-1] != 0
    end
    a1 -= 1
  end
  d += 1
end
list.uniq!
list.sort!
X = gets.to_i
list.each do |num|
  if num >= X
    puts num
    exit
  end
end