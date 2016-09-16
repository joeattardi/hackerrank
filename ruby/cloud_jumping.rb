n = gets.chomp.to_i
clouds = gets.chomp.split(' ').map(&:to_i)

pos = 0
jumps = 0

while pos < n
  if clouds[pos + 2] == 0
    pos += 2
  else
    pos += 1
  end
  jumps += 1
end

puts jumps - 1
