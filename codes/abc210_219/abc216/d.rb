N,k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort.reverse
as << 0
ds = []
i = 0
while i < N
  ds << as[i] - as[i+1]
  i += 1
end
w = 1
ans = 0
h = as[0]
w = 1
while w <= N # 段差とその幅を見ていく(d=0のとき影響がないようにしてるよ！)
  d = ds[w-1]
  e = w*(h*(h+1)/2  - (h-d)*(h-d+1)/2)
  if d*w >= k
    hh = (k/w)
    ee = w*(h*(h+1)/2  - (h-hh)*(h-hh+1)/2)
    k -= hh*w
    ans += ee + k*(h-hh)
    break
  else
    ans += e
    k -= w*d
    h -= d
  end
  w += 1
end
puts ans