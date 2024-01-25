n,K = gets.split
K.to_i.times do
  if n.to_i % 200 == 0
    num = n.to_i / 200
    n = num.to_s
  else
    n += "200"
  end
end
puts n