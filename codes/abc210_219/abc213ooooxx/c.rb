# 座標圧縮
H,W,N = gets.split.map(&:to_i)
r_list = []
c_list = []
cards = []
N.times do
  a,b = gets.split.map(&:to_i)
  r_list << a
  c_list << b
  cards << [a,b]
end
r_hash = {}
r_id = 1
r_list.uniq.sort.each do |num|
  r_hash[num] = r_id
  r_id += 1
end
c_hash = {}
c_id = 1
c_list.uniq.sort.each do |num|
  c_hash[num] = c_id
  c_id += 1
end
cards.each do |card|
  a,b = card
  puts "#{r_hash[a]} #{c_hash[b]}"
end