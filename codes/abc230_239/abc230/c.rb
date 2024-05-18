N,A,B = gets.split.map(&:to_i)
P,Q,R,S = gets.split.map(&:to_i)
def to_be_drawn(r,c)
  r+P + c+R == A + B || r+P - (c+R) == A-B
end
ans = Array.new(Q-P+1) { Array.new(S-R+1) {"."}}
r = 0
while r < Q-P+1
  c = 0
  while c < S-R+1
    ans[r][c] = "#" if to_be_drawn(r,c)
    c += 1
  end
  r += 1
end
ans.each do |row|
  puts row.join
end