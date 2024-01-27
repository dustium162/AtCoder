# 鳩の巣原理
N = gets.to_i
as = gets.split.map{|c|c.to_i%200}
hash = {}
[0,1].repeated_permutation([N,8].min).each do |pattern|
  next if pattern.all?(0)

  sum = 0
  i = 0
  while i < [N,8].min
    sum = (sum + pattern[i]*as[i]) % 200
    i += 1
  end
  hash[sum] = [] unless hash[sum]
  hash[sum] << pattern.filter_map.with_index {|b,id| id+1 if b == 1}
end
i = 0
while i < 200
  break if hash[i] && hash[i].size > 1
  i += 1
end
if i == 200
  puts "No"
else
  puts "Yes"
  puts "#{hash[i][0].size} #{hash[i][0].join(" ")}"
  puts "#{hash[i][1].size} #{hash[i][1].join(" ")}"
end