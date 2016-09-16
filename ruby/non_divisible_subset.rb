def read_array
  gets.chomp.split(' ').map { | num | num.to_i }
end

n, k = read_array
set = read_array

count = 0

remainders = (0...k).to_a

remainder_counts = Hash.new { | hash, key | hash[key] = 0 }

set.each do | num |
  remainders.each do | remainder |
    if (num % k) == remainder
      remainder_counts[remainder] += 1
    end
  end
end

remainders.each do | remainder |
  if remainder > 0
    if k % 2 == 0 && remainder == k / 2
      count += 2
    elsif remainder_counts[remainder] > remainder_counts[k - remainder]
      count += remainder_counts[remainder]
    else
      count += remainder_counts[k - remainder]
    end
  end
end

count = count / 2
if remainder_counts[0] > 0
  count += 1
end
puts count
