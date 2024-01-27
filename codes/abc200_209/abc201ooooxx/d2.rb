# MinMax法
# DFS
# DP
class ABC201D
  def self.solve
    new.tap do |problem|
      problem.solve
      problem.answer
    end
  end

  attr_reader :h, :w, :grid, :dp

  def initialize
    @h,@w = gets.split.map(&:to_i)
    @grid = []
    h.times { grid << gets.chomp.chars.map{ |c| c == "+" ? 1 : -1 } }
    @dp = Array.new(h) { Array.new(w) }
  end

  def solve
    dfs(0,0)
  end

  def dfs(r,c)
    return dp[r][c] if dp[r][c]
    return dp[r][c] = 0 if r == h-1 && c == w-1

    takahashi_turn = (r + c) % 2 == 0

    if takahashi_turn
      if r+1 < h
        d = dfs(r+1,c)
        dp[r][c] = d + grid[r+1][c] if !dp[r][c] || (dp[r][c] < d + grid[r+1][c])
      end
      if c+1 < w
        d = dfs(r,c+1)
        dp[r][c] = d + grid[r][c+1] if !dp[r][c] || (dp[r][c] < d + grid[r][c+1])
      end
    else
      if r+1 < h
        d = dfs(r+1,c)
        dp[r][c] = d - grid[r+1][c] if !dp[r][c] || (dp[r][c] > d - grid[r+1][c])
      end
      if c+1 < w
        d = dfs(r,c+1)
        dp[r][c] = d - grid[r][c+1] if !dp[r][c] || (dp[r][c] > d - grid[r][c+1])
      end
    end
    dp[r][c]
  end

  def answer
    ans = @dp[0][0]

    puts ans == 0 ? "Draw" : (ans > 0 ? "Takahashi" : "Aoki")
  end
end
ABC201D.solve