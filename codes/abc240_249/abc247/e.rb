# 尺取り法
N,X,Y = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
i,ans = 0,0
while i < N
  b = []
  while i < N && Y <= as[i] && as[i] <= X
    b << as[i]
    i += 1
  end
  if b != []
    j = k = x = y = c = 0
    while j < b.size
      while k < b.size && (x == 0 || y == 0)
        x += 1 if b[k] == X
        y += 1 if b[k] == Y
        k += 1
      end
      c += b.size + 1 - k if x > 0 && y > 0
      x -= 1 if b[j] == X
      y -= 1 if b[j] == Y
      j += 1
    end
    ans += c
  else
    i += 1
  end
end
puts ans