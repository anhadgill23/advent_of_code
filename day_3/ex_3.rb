# require 'pry'

# input = File.read './data_3.txt'
# lines = input.readline
# line = 0

line = '#123 @ 2,2: 5x4'.split('')
split_line = {
  id: '',
  column: '',
  row: '',
  length: '',
  width: ''
}

# store the data in a hash
line.each_with_index do |n, index|
  if index > line.index('#') && index < line.index('@') - 1
    split_line[:id] << n
  elsif index > line.index('@') + 1 && index < line.index(',')
    split_line[:column] << n
  elsif index > line.index(',') && index < line.index(':')
    split_line[:row] << n
  elsif index > line.index(':') + 1 && index < line.index('x')
    split_line[:length] << n
  elsif index > line.index('x') && index < line.length
    split_line[:width] << n
  end
end

9.times { puts 9.times { print "*" } }
