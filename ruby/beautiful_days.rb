# https://www.hackerrank.com/challenges/beautiful-days-at-the-movies
def reverse(num)
  num.to_s.reverse.to_i
end

i, j, k = gets.chomp.split(' ').map(&:to_i)
num_days = 0

for day in i..j
  num_days += 1 if (day - reverse(day)).abs % k == 0
end

puts num_days

