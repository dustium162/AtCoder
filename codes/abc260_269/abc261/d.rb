N,M = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)
bonus = {}
M.times do
  c,y = gets.split.map(&:to_i)
  bonus[c] = y
end
scores = [0]
score = 0
counter = 0
xs.each do |x|
  counter += 1
  score += x + (bonus[counter] || 0)
  scores << score
end
p scores
ans = 0
l = 1
while l <= N
  sc = scores[l] * N/(l+1) + scores[(N % (l+1))]
  puts "1サイクルの長さ#{l}, 1サイクルのスコア:#{scores[l]}, サイクル数:#{N/(l+1)}, あまり: #{N%(l+1)}"
  ans = sc if ans < sc
  l += 1
end
puts ans
