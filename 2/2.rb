checksum = 0
while (row = gets.chomp).length.positive?
  numbers = row.split(' ').map(&:to_i).sort.reverse
  start_reverse_index = numbers.length-1
  numbers.each_index do |i|
    #puts 'checking element',i,numbers[i]
    half_num = numbers[i]/2
    current_checksum = 0
    r_i = 0

    while numbers[start_reverse_index-r_i] <= half_num
      if (numbers[i] % numbers[start_reverse_index-r_i]).zero?
        current_checksum = numbers[i] / numbers[start_reverse_index-r_i]
        #puts 'to add', current_checksum
        break
      else
        r_i += 1
      end
    end

    if current_checksum.positive?
      checksum += current_checksum
      #puts 'adding and breaking', checksum
      break
    end

  end
end

puts checksum
