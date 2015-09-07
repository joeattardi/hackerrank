n = gets.to_i
matrix = []

n.times do
  row = gets.split.map { |s| s.to_i }
  matrix.push(row)
end

diag1 = 0
for i in (0...n) do
  diag1 += matrix[i][i]
end

diag2 = 0
for i in (0...n) do
  diag2 += matrix[n - 1 - i][i]
end

puts (diag1 - diag2).abs