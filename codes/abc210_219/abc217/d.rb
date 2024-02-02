require 'set'
L,Q = gets.split.map(&:to_i)
qs = []
split_sign = Array.new(L-1) { false }
Q.times do
  c,x = gets.split.map(&:to_i)
  split_sign[x-1] = true if c == 1
  qs << [c,x]
end
l = 0
while l < L-1
  dsu.merge(l,l+1) unless split_sign[l]
  l += 1
end
ans = []
qs.reverse.each do |q|
  c,x = q
  if c == 1
    dsu.merge(x-1,x)
  else
    ans.unshift(dsu.size(x))
  end
end
puts ans