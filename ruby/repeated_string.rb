str = gets.chomp
n = gets.chomp.to_i

even_times = n / str.length
num_as = even_times * str.count('a')

last = str[0...(n % str.length)]
num_as += last.count('a')

puts num_as
