# https://www.hackerrank.com/challenges/palindrome-index

def is_palindrome?(str)
  str == str.reverse
end

def find_palindrome_index(str)
  a = 0
  b = str.length - 1

  while a < b and str[a] == str[b] do 
    a += 1
    b -= 1
  end

  if a >= b
    return -1
  else
    return is_palindrome?(str[a...b]) ? b : a
  end
end

num_cases = gets.chomp.to_i
results = []

num_cases.times do 
  str = gets.chomp
  results << find_palindrome_index(str)
end

puts results.join("\n");
