# https://www.hackerrank.com/challenges/sock-merchant

num_socks = gets.chomp.to_i
socks = gets.chomp.split(' ').map(&:to_i).sort

sock_colors = Hash.new { | hash, key | hash[key] = 0 }

socks.each { | color | sock_colors[color] += 1 }

pairs = 0
sock_colors.each_value { | sock_count | pairs += (sock_count / 2) }

puts pairs
