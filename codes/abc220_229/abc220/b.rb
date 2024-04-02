K = gets.to_i
a,b = gets.split.map(&:to_i).map(&:to_s).map(&:chars).map{|ar| ar.map(&:to_i)}
as = []
bs = []
base = 0
while a != [] || b != []
  as << a.pop * (K**base) if a != []
  bs << b.pop * (K**base) if b != []
  base += 1
end
puts as.sum * bs.sum