=begin
https://www.hackerrank.com/challenges/encryption

An English text needs to be encrypted using the following encryption scheme. 
First, the spaces are removed from the text. Let L be the length of this text. 
Then, characters are written into a grid, whose rows and columns have the following constraints:

floor(sqrt(L)) <= rows <= columns <= ceil(sqrt(L))

The encoded message is obtained by displaying the characters in a column, inserting a space, and then 
displaying the next column and inserting a space, and so on.

You will be given a message in English with no spaces between the words. The maximum message length can 
be 81 characters. Print the encoded message.
=end
chars = gets.chomp.gsub(/ /, '').split('')

# First attempt at rows and columns
len_sqrt = Math.sqrt(chars.length)
rows = len_sqrt.floor
cols = len_sqrt.ceil

# If rows and cols don't satisfy the requirement
# of rows <= cols <= length, tweak the grid size
# until they do
while rows * cols < chars.length do
  if rows < cols
    rows += 1
  else
    cols += 1
  end
end

grid = Array.new(rows) { |index| Array.new(cols) }

# Fill the grid
index = 0
rows.times do |row|
  cols.times do |col|
    grid[row][col] = chars[index]
    index += 1
  end
end

# Walk down each column to construct the encrypted message
encrypted_message = ''
cols.times do |col|
  rows.times do |row|
    chr = grid[row][col]
    encrypted_message += chr unless chr.nil?
  end
  encrypted_message += ' '
end

puts encrypted_message
