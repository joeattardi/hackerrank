def read_array
  gets.chomp.split(' ').map { | num | num.to_i }
end

a = read_array
b = read_array
score = [0, 0]

(0..2).to_a.each do | index |
  score[0] += 1 if a[index] > b[index]  
  score[1] += 1 if a[index] < b[index]  
end

puts score.join(' ')

