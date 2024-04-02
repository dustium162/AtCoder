# ChatGPTでC++に変換してAC
L,Q = gets.split.map(&:to_i)
wood = [0,L]
Q.times do
  c,x = gets.split.map(&:to_i)
  id = wood.bsearch_index{|w| w > x}
  if c == 1
    wood.insert(id,x)
  else
    puts wood[id] - wood[id-1]
  end
end
