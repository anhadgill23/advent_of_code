test_string = File.read './data_5.txt'
test_string = test_string.split('')
alphabets = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
alphabet_count = {}

alphabets.each do |n|
  dummy_string = test_string.dup
  dummy_string.delete_if { |a| a.downcase == n }

  index = 0

  until index == dummy_string.size - 1
    if (dummy_string[index].ord - dummy_string[index + 1].ord).abs == 32
      dummy_string.delete_at(index)
      dummy_string.delete_at(index)
      index -= 1 unless index == 0
    else
      index += 1
    end
  end

  alphabet_count[n] = dummy_string.length
end

puts "The answer is #{alphabet_count.values.min}"
