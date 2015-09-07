n = gets.to_i
arr = gets.split
sum = arr.reduce(0) { |memo, num| memo + num.to_i }
puts sum
