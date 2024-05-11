class ABC245D
  def self.solve
    new.tap do |problem|
      problem.solve
      problem.answer
    end
  end

  def initialize
    @n,@m = gets.split.map(&:to_i)
    @as = gets.split.map(&:to_i)
    @cs = gets.split.map(&:to_i)
    @bs = []
  end

  def solve
    k = M
    while k >= 0
      d = cs[k] / as[i]
      i = N
      while i >= 0

        i -= 1
      end
      k -= 1
    end
  end

  def answer
    puts bs.join(" ")
  end
end
ABC245D.solve
