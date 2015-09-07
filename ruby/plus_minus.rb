n = gets.to_i
arr = gets.split.map { |s| s.to_i }

positives = arr.find_all { |i| i > 0 }
negatives = arr.find_all { |i| i < 0 }
zeroes = arr.find_all { |i| i == 0 }

puts (positives.length.to_f / n)
puts (negatives.length.to_f / n)
puts (zeroes.length.to_f / n)
