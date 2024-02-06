N,K = gets.split.map(&:to_i)
list = (0...N).map{gets.chomp.chars}
ans = 0
[0,1].repeated_permutation(N).each do |pattern|
  counter = Array.new(26) {0}
  i = 0
  while i < N
    if pattern[i] == 1
      ("a".."z").each_with_index do |c,id|
        counter[id] += 1 if list[i].include?(c)
      end
    end
    i += 1
  end
  num = counter.count(K)
  ans = num if ans < num
end
puts ans