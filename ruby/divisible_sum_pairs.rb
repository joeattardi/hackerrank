def read_array
  gets.chomp.split(' ').map { | num | num.to_i }
end

n, k = read_array
numbers = read_array
num_pairs = 0

for i in 0..(numbers.length - 1)
  for j in (i + 1)..(numbers.length - 1)
    if ((numbers[i] + numbers[j]) % k) == 0
      num_pairs += 1
    end
  end
end

puts num_pairs

