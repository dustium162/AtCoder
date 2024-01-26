# Segment Intersection
# 区間の交わり
def check(ti,li,ri,tj,lj,rj)
  return check(tj,lj,rj,ti,li,ri) if lj < li

  if ri < lj || (ri == lj && (ti == 2 || ti == 4 || tj == 3 || tj == 4))
    false
  else
    true
  end
end
N = gets.to_i
list = []
N.times do
  list << gets.split.map(&:to_i)
end
i = 0
ans = 0
while i < N-1
  ti,li,ri = list[i]
  j = i+1
  while j < N
    tj,lj,rj = list[j]
    ans += 1 if check(ti,li,ri,tj,lj,rj)
    j += 1
  end
  i += 1
end
puts ans