hash = {
  "ABC" => true,
  "ARC" => true,
  "AGC" => true,
  "AHC" => true
}
3.times { hash[gets.chomp] = false }
hash.each {|key,val| puts key if val}