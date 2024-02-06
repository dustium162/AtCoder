S = gets.chomp.chars
puts S.any?{|c| c == c.upcase} && S.any?{|c| c == c.downcase} && S.size == S.uniq.size ? "Yes" : "No"