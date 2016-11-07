# https://www.hackerrank.com/challenges/strange-advertising
n = gets.chomp.to_i

day = 1
people = 5
total_liked = 0

while day <= n
  liked = (people / 2.0).floor
  total_liked += liked
  people = liked * 3
  day += 1
end

puts total_liked
