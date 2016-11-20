# https://www.hackerrank.com/challenges/mini-max-sum
numbers = gets.chomp.split(' ').map(&:to_i).sort

min = numbers[0..3].reduce(:+)
max = numbers[1..4].reduce(:+)

puts "#{min} #{max}"

