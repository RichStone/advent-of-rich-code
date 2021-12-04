# 12 is the length of each input line.
column_counts = { 0 => 0, 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0, 7 => 0, 8 => 0, 9 => 0, 10 => 0, 11 => 0 }
data = open('./day3.txt').map { |line| line.strip.split('').each_with_index { |char, i| column_counts[i] += char.to_i } }
column_counts.each { || }
gamma = column_counts.map { |_, v| v > (data.count/2) ? "1" : "0" }.join
delta = gamma.gsub(/\d/) { |bit| bit == "1" ? "0" : "1" }
puts "part 1: #{gamma.to_i(2) * delta.to_i(2)}"
