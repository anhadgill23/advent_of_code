test_string = File.read './data_5.txt'
test_string = test_string.split('')
index = 0

until index == test_string.size - 1
  if (test_string[index].ord - test_string[index + 1].ord).abs == 32
    test_string.delete_at(index)
    test_string.delete_at(index)
    index -= 1 unless index == 0
  else
    index += 1
  end
end

puts "The answer is #{test_string.join.length}"