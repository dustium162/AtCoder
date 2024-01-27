# 主格転倒
# DSU
# Union Find
require 'ac-library-rb/dsu'
include AcLibraryRb
N = gets.to_i
edges = []
(N-1).times { edges << gets.split.map(&:to_i) }
edges = edges.sort_by{|edge| edge[-1]}
dsu = DSU.new(N)
ans = 0
edges.each do |edge|
  u,v,w = edge
  ans += w * dsu.size(u-1) * dsu.size(v-1)
  dsu.merge(u-1,v-1)
end
puts ans
