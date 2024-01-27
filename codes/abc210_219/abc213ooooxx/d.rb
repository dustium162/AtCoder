# DFS
class ABC213D
  def self.solve
    new.tap do |problem|
      problem.solve
      problem.answer
    end
  end

  attr_reader :n, :roads, :visited, :ans

  def initialize
    @n = gets.to_i
    @roads = Array.new(n) {[]}
    (n-1).times do
      a,b = gets.split.map(&:to_i)
      roads[a-1] << b-1
      roads[b-1] << a-1
    end
    roads.map!{|cities| cities.sort!}
    @visited = Array.new(@n) {false}
    @ans = []
  end

  def solve
    dfs(0)
  end

  def dfs(city)
    @visited[city] = true
    @ans << city + 1
    @roads[city].each do |next_city|
      unless visited[next_city]
        dfs(next_city)
        @ans << city + 1
      end
    end
  end

  def answer
    puts ans.join(" ")
  end
end
ABC213D.solve
