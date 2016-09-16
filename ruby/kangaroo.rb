def read_array
  gets.chomp.split(' ').map { | num | num.to_i }
end

x1, v1, x2, v2 = read_array

begin
  jumps = (x2 - x1).to_f / (v1 - v2).to_f
  puts jumps >= 0 && jumps == jumps.to_i ? 'YES' : 'NO'
rescue
  puts 'NO'
end
