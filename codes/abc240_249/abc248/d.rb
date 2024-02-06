# 二分探索
N = gets.to_i
as = gets.split.map(&:to_i)
hash = {}
as.each_with_index do |a,id|
  hash[a] = [] unless hash[a]
  hash[a] << id
end
Q = gets.to_i
Q.times do
  l,r,x = gets.split.map(&:to_i)
  if hash[x]
    r_id = hash[x].bsearch_index{|id| id >= r} || hash[x].size
    l_id = hash[x].bsearch_index{|id| id >= l-1} || hash[x].size
    puts r_id - l_id
  else
    puts 0
  end
end