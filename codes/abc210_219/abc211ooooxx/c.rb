PRIME = 10**9+7
S = gets.chomp.chars
char_map = {}
"chokudai".chars.each_with_index {|c,id| char_map[c] = id}
size = S.size
dp = Array.new(size) { Array.new(8) {0}}
i = 0
while i < size
  c = char_map[S[i]]
  if c == 0
    dp[i][c] += 1
  elsif c
    dp[i][c] += dp[i-1][c-1]
  end
  d = 0
  while d < 8
    dp[i][d] += dp[i-1][d]
    d += 1
  end
  i += 1
end
puts dp[-1][-1] % PRIME