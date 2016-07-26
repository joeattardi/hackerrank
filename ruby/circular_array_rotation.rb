# https://www.hackerrank.com/challenges/circular-array-rotation

def read_numbers
  gets.chomp.split(' ').map { |num| num.to_i }
end


array_length, rotation_count, query_count = read_numbers
arr = read_numbers

rotation_count.times do
  arr.unshift(arr.pop)
end

queries = []
query_count.times do
  queries << gets.chomp.to_i 
end

queries.each { |q| puts arr[q] }

