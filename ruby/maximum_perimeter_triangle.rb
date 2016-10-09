num_sticks = gets.chomp.to_i
sticks = gets.chomp.split(' ').map(&:to_i)
sticks.sort!

i = num_sticks - 3
while i >= 0 and sticks[i] + sticks[i + 1] <= sticks[i + 2]
  i -= 1
end

if i == -1 
  puts '-1'
else
  puts "#{sticks[i]} #{sticks[i + 1]} #{sticks[i + 2]}"
end
