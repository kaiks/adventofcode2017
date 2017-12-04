list = gets.chomp
list = list.split('').map(&:to_i)

len = list.length
total = 0
list.each_index do |i|
  if list[i] == list[(i+len/2)%len]
    total += list[i]
  end
end

puts total