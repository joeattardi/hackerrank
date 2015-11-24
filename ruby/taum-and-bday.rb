=begin
https://www.hackerrank.com/challenges/taum-and-bday

Taum is planning to celebrate the birthday of his friend, Diksha. 
There are two types of gifts that Diksha wants from Taum: one is black and the other is white. 
To make her happy, Taum has to buy B number of black gifts and W number of white gifts.

The cost of each black gift is X units.
The cost of every white gift is Y units.
The cost of converting each black gift into white gift or vice versa is Z units.
Help Taum by deducing the minimum amount he needs to spend on Diksha's gifts.

Input Format

The first line will contain an integer T which will be the number of test cases.
There will be T pairs of lines. The first line of each test case will contain the values of 
integers B and W. Another line of each test case will contain the values of integers X, Y, and Z.

Constraints 
1 <= T <= 10 
0 <= X,Y,Z,B,W <= 10^9
Output Format

T lines, each containing an integer: the minimum amount of units Taum needs to spend on gifts.
=end

def read_numbers
  gets.chomp.split(' ').map { |num| num.to_i }
end

def minimum_cost(quantity, cost, other_cost, convert_cost)
  base_total = quantity * cost
  conversion_total = quantity * (other_cost + convert_cost)
  [base_total, conversion_total].min
end

num_cases = read_numbers[0]
results = []

num_cases.times do
  black_gifts, white_gifts = read_numbers
  black_cost, white_cost, convert_cost = read_numbers

  black_minimum_cost = minimum_cost(black_gifts, black_cost, white_cost, convert_cost)
  white_minimum_cost = minimum_cost(white_gifts, white_cost, black_cost, convert_cost)

  results << (white_minimum_cost + black_minimum_cost)
end

results.each { |result| puts result }
