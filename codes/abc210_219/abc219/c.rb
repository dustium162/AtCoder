X = gets.chomp.chars
alps = ("a".."z").to_a
hash = {}
(0...26).each {|i| hash[X[i]] = alps[i]}
N = gets.to_i
list = []
N.times do
  list << gets.chomp
end
puts list.sort_by{|name| name.chars.map{|c| hash[c]}.join }
