input = File.open './data_2.txt'
lines = input.readlines
line = 0
counter = { 2 => 0, 3 => 0 }

until line == lines.size
  count_twos = 0
  count_threes = 0
  string = lines[line]

  count_twos = string.to_s.each_char.count { |c| string.count(c) == 2 }
  counter[2] += 1 if count_twos >= 1

  count_threes = string.to_s.each_char.count { |c| string.count(c) == 3 }
  counter[3] += 1 if count_threes >= 1

  line += 1
end

output = counter[2] * counter[3]
puts "The answer is #{output}."

