input = open('./day1.txt').map(&:to_i)
puts 'part 1:', input.each_cons(2).select { |cons| cons[0] < cons[1] }.count

previous_sum = 0
increased_cons = input.each_cons(3).select do |cons|
  gt = cons.sum > previous_sum if previous_sum != 0
  previous_sum = cons.sum
  gt
end.count
puts 'part 2:', increased_cons
