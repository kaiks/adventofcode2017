list = gets.chomp
list[list.length] = list[0]
list = list.split('').map(&:to_i)

total = 0
list.each_index do |i|
  if list[i] == list[i+1]
    total += list[i]
  end
end

puts total