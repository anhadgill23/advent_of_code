input = File.open './data_2.txt'
lines = input.readlines

lines.each do |line|
  letter_a = line.split('')

  lines.drop(1).each_with_index do |element, index|
    letter_b = element.split('')
    counter = 0
    i = 1

    until i == letter_a.size
      if letter_a[i] != letter_b[i]
        counter += 1
        letter_b.delete_at(i)
        letter_b.insert(i, 0)
      end
      i += 1
    end

    letter_b.each do |n|
      if n == 0
        letter_b.delete(n)
        puts "The answer is #{letter_b.join}" if counter == 1
      end
    end

  end
end
