checksum = 0
while (row = gets.chomp).length.positive?
  numbers = row.split(' ').map(&:to_i)
  minmax = numbers.minmax
  checksum += minmax[1] - minmax[0]
end
puts checksum
