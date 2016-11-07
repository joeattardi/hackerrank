# https://www.hackerrank.com/challenges/flatland-space-stations

def read_numbers
  gets.chomp.split(' ').map(&:to_i)
end

num_cities, num_stations = read_numbers
stations = read_numbers
distances = []

stations.sort!

stations.length.times do | i |
  distances.push stations[i] - stations[i - 1] 
end

distance_from_last = num_cities - stations.last - 1
distance_to_first = stations.first
inner_max = distances.max / 2

puts [distance_from_last, distance_to_first, inner_max].max
