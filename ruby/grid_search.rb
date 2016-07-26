def check_for_match(grid, pattern, start_row, column)
  index = grid[start_row].index(pattern[0])

  if start_row <= grid.length - pattern.length
    pattern.length.times do |pattern_row|
      if grid[start_row + pattern_row][column, pattern[pattern_row].length] != pattern[pattern_row]
        return false
      end 
    end

    return true
  end

  return false
end

def search_grid(grid, pattern)
  grid.each_index do |row|
    index = grid[row].index(pattern[0])
    while index do
      if grid[row].index(pattern[0])
        if check_for_match(grid, pattern, row, index)
          return true
        end
      end

      index = grid[row].index(pattern[0], index + 1)
    end
  end

  return false
end

results = []

num_test_cases = gets.chomp.to_i

num_test_cases.times do 
  rows_cols = gets.chomp
  rows, cols = rows_cols.split(' ').map(&:to_i)
  grid = []

  rows.times do
    grid << gets.chomp  
  end

  pattern_rows_cols = gets.chomp
  pattern_rows, pattern_cols = pattern_rows_cols.split(' ').map(&:to_i)
  pattern = []

  pattern_rows.times do
    pattern << gets.chomp
  end

  results << (search_grid(grid, pattern) ? 'YES' : 'NO')
end

puts results.join("\n")
