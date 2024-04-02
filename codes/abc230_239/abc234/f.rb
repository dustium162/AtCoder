# 未AC
MOD = 998_244_353
alp_map = {}
("a".."z").each_with_index {|c,id| alp_map[c] = id}
S = gets.chomp.map{|c| alp_map[c]}
dp = Array.new()