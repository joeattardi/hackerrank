# https://www.hackerrank.com/challenges/bigger-is-greater
#
# Given a word w, rearrange the letters of w to construct another word s in such a way that s is lexicographically greater than w. 
# In case of multiple possible answers, find the lexicographically smallest one among them.
# Using the algorithm described at https://www.nayuki.io/page/next-lexicographical-permutation-algorithm

def find_pivot_index(char_arr)
  # Find the longest non-increasing suffix and select pivot
  pivot_index = char_arr.length - 2
  index = char_arr.length - 1
  while pivot_index >= 0 && char_arr[pivot_index] >= char_arr[index] do
    index -= 1
    pivot_index = index - 1
  end

  pivot_index
end

def find_successor_index(char_arr, pivot_index)
  successor_index = pivot_index + 1
  while successor_index < char_arr.length && char_arr[successor_index] > char_arr[pivot_index] do
    successor_index += 1
  end

  successor_index - 1
end

def swap(arr, x, y)
  temp = arr[x]
  arr[x] = arr[y]
  arr[y] = temp
end

def find_next_permutation(str)
  
  char_arr = str.split('')
  
  pivot_index = find_pivot_index(char_arr)
  
  if pivot_index == -1
    return "no answer"
  end

  successor_index = find_successor_index(char_arr, pivot_index)

  swap(char_arr, pivot_index, successor_index)
  suffix = char_arr[(pivot_index + 1)...char_arr.length].reverse
  char_arr = char_arr[0..pivot_index] + suffix

  char_arr.join('')
end

num_cases = gets.chomp.to_i
cases = []
num_cases.times do
  cases << gets.chomp
end

cases.each do | str |
  puts find_next_permutation(str)
end
