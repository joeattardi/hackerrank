# https://www.hackerrank.com/challenges/save-the-prisoner

results = []
num_cases = gets.chomp.to_i
num_cases.times do
  num_prisoners, num_sweets, starting_prisoner = gets.chomp.split(' ').map(&:to_i)
  results << ((starting_prisoner - 1 + num_sweets - 1) % num_prisoners) + 1
end

results.each { | result | puts result }
