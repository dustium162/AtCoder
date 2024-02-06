require 'ac-library-rb/dsu'
include AcLibraryRb
N,Q=gets.split.map(&:to_i)
dsu=DSU.new(N+1)
Q.times{l,r=gets.split.map(&:to_i);dsu.merge(l-1,r)}
puts dsu.same?(0,N) ? :Yes : :No