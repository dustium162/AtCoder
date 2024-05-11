N = gets.to_i
board = (1..N).map{gets.chomp.chars}
ans = "correct"
i = 0
while i < N-1
  j = i+1
  while j < N
    r = board[i][j]
    if r == "W"
      ans = "incorrect" unless board[j][i] == "L"
    elsif r == "L"
      ans = "incorrect" unless board[j][i] == "W"
    elsif r == "D"
      ans = "incorrect" unless board[j][i] == "D"
    end
    j += 1
  end
  i += 1
end
puts ans