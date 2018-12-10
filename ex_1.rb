input = File.open "./data_1.txt"
lines = input.readlines

sum = 0
line = 0
storage = { 0 => true }

until false do
    sum += Integer lines[line]

    if storage[sum] == true
        puts "The answer is #{sum}"
        break
    end

    storage[sum] = true

    line += 1

    if line == lines.size
        line = 0
    end
end