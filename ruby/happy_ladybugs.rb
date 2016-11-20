# https://www.hackerrank.com/challenges/happy-ladybugs
def happy?(board, index)
  board[index] != '_' && (board[index] == board[index - 1] || board[index] == board[index + 1])
end

def all_happy?(board)
  return false if board.length == 1

  board.each_index do |index|
    return false if !happy?(board, index)
  end

  return true
end

def game(board)
  return true if all_happy?(board)

  counts = Array.new(26, 0)
  board.each do |cell|
    if cell != '_'
      counts[cell.ord - 65] += 1
    end
  end

  counts.each do |count|
    if count == 1
      return false
    end
  end

  return board.include?('_')
end


num_games = gets.chomp.to_i

results = []

num_games.times do
  num_cells = gets.chomp.to_i
  board = gets.chomp.split('')
  results << (game(board) ? 'YES' : 'NO')
end

puts results

