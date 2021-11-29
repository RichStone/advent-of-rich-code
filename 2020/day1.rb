data = open('./day1_input.txt').map(&:to_i)
result = data.combination(2).select { |comb| comb.reduce(:+) == 2020 }.flatten.reduce(:*)
puts "part 1: #{result}"

result = data.combination(3).select { |comb| comb.reduce(:+) == 2020 }.flatten.reduce(:*)
puts "part 2: #{result}"
