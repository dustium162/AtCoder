# クラスカル法
# 最小全域木
require 'ac-library-rb/dsu'
include AcLibraryRb
N,M = gets.split.map(&:to_i)
dsu = DSU.new(N)
es = []
ans = 0
M.times do
  a,b,c = gets.split.map(&:to_i)
  ans += c
  es << [a-1,b-1,c]
end
es = es.sort_by{|e| e[2]}
while e = es.shift
  a,b,c = e
  if !dsu.same?(a,b) || c < 0
    dsu.merge(a,b)
    ans -= c
  end
end
puts ans