def alternating_string?(str)
  return false if str.length < 2

  str.length.times do | index |
    expected = index.even? ? str[0] : str[1]
    return false if str[index] != expected
  end

  return true
end

def try_string(chr1, chr2, str)
  chars = str.chars.select { |chr| chr == chr1 || chr == chr2 }
  chars.join('')
end

gets.chomp.to_i
str = gets.chomp

longest = 0
permutations = str.chars.uniq.permutation(2)
permutations.each do | permutation | 
  candidate_str = try_string(permutation[0], permutation[1], str)

  if alternating_string?(candidate_str)
    longest = [longest, candidate_str.length].max
  end
end

puts longest
