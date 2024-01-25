require 'ac-library-rb/dsu'
include AcLibraryRb
N = gets.to_i
as = gets.split.map(&:to_i)
i = 0
id_hash = {}
as.each do |a|
  unless id_hash[a]
    id_hash[a] = i
    i += 1
  end
end
dsu = DSU.new(N)
i = 0
while i < N/2
  a,b = as[i],as[-1-i]
  if a != b
    a_id,b_id = id_hash[a],id_hash[b]
    dsu.merge(a_id,b_id)
  end
  i += 1
end
ans_hash = {}
i = 0
while i < N
  l = dsu.leader(i)
  ans_hash[l] = 0 unless ans_hash[l]
  ans_hash[l] += 1
  i += 1
end
ans = 0
ans_hash.each do |key,val|
  ans += val-1
end
puts ans
