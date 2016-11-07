# https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited

def read_numbers
  gets.chomp.split(' ').map(&:to_i)
end

num_clouds, jump_distance = read_numbers
clouds = read_numbers

energy = 100
cloud = 0

loop do
  energy -= 1
  cloud = (cloud + jump_distance) % num_clouds
  energy -= 2 if clouds[cloud] == 1
  break if cloud == 0
end

puts energy
