# https://www.hackerrank.com/challenges/ctci-making-anagrams

def get_char_occurrences(chars)
  occurrences = Hash.new { | hash, key | hash[key] = 0 }
  chars.each { | chr | occurrences[chr] += 1 }

  occurrences
end

def get_difference_count(hash, other_hash, processed)
  deletions = 0

  hash.each_pair do | key, value |
    unless processed.include?(key)
      deletions += (value - other_hash[key]).abs
      processed << key
    end
  end

  deletions
end

def get_char_array
  gets.chomp.split('')
end

first_chars = get_char_array 
second_chars = get_char_array

first_hash = get_char_occurrences(first_chars)
second_hash = get_char_occurrences(second_chars)

deletions = 0
processed = []

deletions += get_difference_count(first_hash, second_hash, processed)
deletions += get_difference_count(second_hash, first_hash, processed)

puts deletions
