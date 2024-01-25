N,Q = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
# cs[i]はas[i]未満の良い数の個数
cs = []
as.each_with_index do |a,id|
  cs << a - id - 1
end
Q.times do
  k = gets.to_i
  c_id = cs.bsearch_index {|c| c >= k }
  # 「k以下の良くない数の個数」+k が答えと考える
  if c_id
    puts (as[c_id] - 1 - cs[c_id]) + k
  else
    puts (as[-1] - cs[-1]) + k
  end
end
