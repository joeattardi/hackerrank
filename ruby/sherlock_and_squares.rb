=begin
Sherlock and Squares

Watson gives two integers (AA and BB) to Sherlock and asks if he can count the number of square integers between AA and BB (both inclusive).

Note: A square integer is an integer which is the square of any integer. For example, 1, 4, 9, and 16 are some of the square integers as they are squares of 1, 2, 3, and 4, respectively.

Input Format 
The first line contains TT, the number of test cases. TT test cases follow, each in a new line. 
Each test case contains two space-separated integers denoting AA and BB.

Output Format 
For each test case, print the required answer in a new line.

Constraints 
1 ≤ T ≤ 100
1 ≤ A ≤ B ≤ 10^9

=end
results = []

num_cases = gets.chomp.to_i
num_cases.times do
  a, b = gets.chomp.split(' ').map(&:to_i)
  num_squares = 0

  start_sqrt = Math.sqrt(a)
  end_sqrt = Math.sqrt(b)
  num_squares = end_sqrt.floor - start_sqrt.ceil + 1

  results << num_squares
end

puts results.join("\n")

