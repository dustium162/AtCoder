# 解けてないぞよ
N,K = gets.split.map(&:to_i)
list = (0...N).map{gets.split.map(&:to_i)}
if K == 1
  puts "Infinity"
else
  hash = {}
  v_hash = Hash.new(0)
  h_hash = Hash.new(0)
  i = 0
  while i < N-1
    xi,yi = list[i]
    j = i+1
    while j < N
      xj,yj = list[j]
      dx = xj - xi
      dy = yj - yi
      if dx == 0
        v_hash[xi] += 1
      elsif dy == 0
        h_hash[yi] += 1
      else
        m = Rational(dy,dx)
        d = yi - m * xi
        hash[m] = {} unless hash[m]
        hash[m][d] = 0 unless hash[m][d]
        hash[m][d] += 1
      end
      j += 1
    end
    i += 1
  end
  ans = 0
  ans += h_hash.values.filter{|n| n >= K}.size
  ans += v_hash.values.filter{|n| n >= K}.size
  hash.values.each do |h|
    ans += h.values.filter{|n| n >= K}.size
  end
  p hash
  puts ans
end
