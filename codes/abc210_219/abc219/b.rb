ss = []
3.times { ss << gets.chomp }
puts gets.chomp.chars.map{|c| ss[c.to_i - 1]}.join