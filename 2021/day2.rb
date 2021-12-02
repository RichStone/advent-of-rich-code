# Part 1.
data = open('day2.txt').map { |line| line.split(' ') }.map { |instruction, unit| [instruction, unit.to_i] }
horizontal = data.reduce(0) { |sum, tuple| tuple[0] == 'forward' ? sum + tuple[1] : sum }
depth = data.reduce(0) do |sum, tuple|
  tuple[1] *= -1 if tuple[0] == 'up'
  tuple[0] != 'forward' ? sum + tuple[1] : sum
end
puts 'part 1:', horizontal * depth

# Part 2.
data = open('day2.txt').map { |line| line.split(' ') }.map { |instruction, unit| [instruction, unit.to_i] }
final_calculation = data.each_with_object({ aim: 0, depth: 0, horizontal: 0 }) do |tuple, calc|
  case tuple[0]
  when 'down'
    calc[:aim] += tuple[1]
  when 'up'
    calc[:aim] -= tuple[1]
  else
    calc[:horizontal] += tuple[1]
    calc[:depth] += calc[:aim] * tuple[1]
  end
  calc
end
puts 'part 2:', final_calculation[:horizontal] * final_calculation[:depth]
