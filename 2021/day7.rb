positions = File.read('./day7.txt').split(',').map(&:to_i)
p 'part 1: ', positions.map { |p1| positions.reduce(0) { |sum, p2| sum + (p2 - p1).abs } }.min
p 'part 2: ', positions.map { |p1| positions.reduce(0) { |sum, p2| diff = (p2 - p1).abs; sum + ((Float(diff) / 2) * (1 + diff)) } }.min


