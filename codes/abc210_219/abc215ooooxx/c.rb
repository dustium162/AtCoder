S,K = gets.split
list = []
S.chars.permutation.each {|perm| list << perm.join }
puts list.uniq.sort[K.to_i-1]
