test_string = File.read './data_5.txt'
test_string = test_string.split('')
alphabets = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
alphabet_count = {}

alphabets.each do |n|
  dummy_string = test_string
  dummy_string.delete_if { |a| a == n }
  dummy_string[n] = dummy_string.size
end

puts alphabet_count
