N = gets.to_i
mounts = []
N.times do
  mounts << gets.split
end
puts mounts.sort_by{|mount| -mount[1].to_i}[1][0]
