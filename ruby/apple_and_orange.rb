# https://www.hackerrank.com/challenges/apple-and-orange
def read_numbers
  return gets.chomp.split(' ').map(&:to_i)
end

def count_distances(distances, tree, house_start, house_end)
  counter = 0
  distances.each do |distance|
    fall_location = tree + distance
    counter += 1 if fall_location >= house_start && fall_location <= house_end
  end

  counter
end

house_start, house_end = read_numbers
apple_tree, orange_tree = read_numbers
num_apples, num_oranges = read_numbers

apple_distances = read_numbers
orange_distances = read_numbers

apple_count = count_distances(apple_distances, apple_tree, house_start, house_end)
orange_count = count_distances(orange_distances, orange_tree, house_start, house_end)

puts apple_count
puts orange_count
