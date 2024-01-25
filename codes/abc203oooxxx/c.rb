N,K = gets.split.map(&:to_i)
list = []
N.times do
  list << gets.split.map(&:to_i)
end
list.sort!
l = K
place = 0
list.each do |pair|
  a,b = pair
  d = a - place
  place = a
  l -= d
  if l < 0
    puts place + l
    exit
  end
  l += b
end
puts place + l