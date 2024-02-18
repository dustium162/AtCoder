N,X,Y = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
xy = nx = ny = nxy = 0
sxy = snx = sny = snxy = 0
(0...N).each do |i|
  if as[i] < Y || as[i] > X
    sxy += xy * (xy + 1) / 2
    snx += nx * (nx + 1) / 2
    sny += ny * (ny + 1) / 2
    snxy += nxy * (nxy + 1) / 2
    sxy = snx = sny = snxy = 0
  else
    sxy += 1
    snx += 1
    sny += 1
    snxy += 1
  end
  if as[i] == X
    snx += nx * (nx + 1) / 2
    snxy += nxy * (nxy + 1) / 2
  end
  if as[i] == Y
    sny += ny * (ny + 1) / 2
    snxy += nxy * (nxy + 1) / 2
  end
end
sxy += xy * (xy + 1) / 2
snx += nx * (nx + 1) / 2
sny += ny * (ny + 1) / 2
snxy += nxy * (nxy + 1) / 2
puts sxy - snx - sny + snxy