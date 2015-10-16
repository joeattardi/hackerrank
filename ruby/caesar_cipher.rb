str_len = gets.chomp.to_i
input_str = gets.chomp
rotate_count = gets.chomp.to_i

lowercase = ('a'..'z').to_a
lowercase_hash = Hash[lowercase.zip(lowercase.rotate(rotate_count))]

uppercase = ('A'..'Z').to_a
uppercase_hash = Hash[uppercase.zip(uppercase.rotate(rotate_count))]

cipher = lowercase_hash.merge(uppercase_hash)

output = input_str.chars.map { | chr | cipher[chr] or chr }
puts output.join


# def rotate(letter, rotate_count)
#   offset = 0
#   ascii_code = letter.ord

#   case ascii_code
#     when 65..90
#       offset = 65
#     when 97..122
#       offset = 97
#     else
#       return letter
#     end

#   alpha_index = ascii_code - offset
#   alpha_index = (alpha_index + rotate_count) % 26

#   ascii_code = alpha_index + offset
#   return ascii_code.chr
# end

# str_len = gets.chomp.to_i
# input_str = gets.chomp
# rotate_count = gets.chomp.to_i

# letters = input_str.split('')

# rotated_letters = letters.map { |letter| rotate(letter, rotate_count) }
# puts rotated_letters.join
