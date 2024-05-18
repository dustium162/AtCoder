# 区間スケジューリング問題
N,D = gets.split.map(&:to_i)
walls = []
N.times do
  walls << gets.split.map(&:to_i)
end
last_punched_at = -10**20
ans = 0
walls.sort_by{ |wall| wall[1] }.each do |wall|
  l,r = wall
  if l > last_punched_at + D - 1
    last_punched_at = r
    ans += 1
  end
end
puts ans