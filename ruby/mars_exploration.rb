# https://www.hackerrank.com/challenges/mars-exploration
message = gets.chomp
message_chunks = []
while message.length > 0 
  message_chunks << message[0..2]
  message = message[3...message.length]
end

altered_chars = 0
message_chunks.each do |chunk|
  altered_chars += 1 if chunk[0] != 'S'
  altered_chars += 1 if chunk[1] != 'O'
  altered_chars += 1 if chunk[2] != 'S'
end

puts altered_chars
