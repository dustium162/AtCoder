list = []
4.times {list << gets}
puts list.uniq.size == 4 ? "Yes" : "No"