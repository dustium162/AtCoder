class ABC218C
  def self.solve
    new.tap do |problem|
      problem.solve
      problem.answer
    end
  end

  attr_reader :n, :s, :t

  def initialize
    @n = gets.to_i
    @s = Grid.new(n)
    @t = Grid.new(n)
    @ans = false
  end

  def solve
    4.times do
      t.rotate
      @ans = true if s.body == t.body
    end
  end

  def answer
    puts @ans ? "Yes" : "No"
  end

  class Grid
    attr_reader :body, :size, :h, :w

    def initialize(n)
      @size = n
      @body = Array.new(n) { gets.chomp.chars }
      trim!
    end

    def trim!
      @body.shift while body[0].all?(".")
      @body.pop while body[-1].all?(".")
      while true
        if @body.all? {|row| row[0] == "."}
          @body.each {|row| row.shift}
        else
          break
        end
      end
      while true
        if @body.all? {|row| row[-1] == "."}
          @body.each {|row| row.pop}
        else
          break
        end
      end
      @h = @body.size
      @w = @body.first.size
    end

    def rotate
      new_body = Array.new(w) { Array.new(h) }
      hh = 0
      while hh < h
        ww = 0
        while ww < w
          new_body[w-ww-1][hh] = body[hh][ww]
          ww += 1
        end
        hh += 1
      end
      @body = new_body
      @h, @w = w,h
    end
  end
end
ABC218C.solve
