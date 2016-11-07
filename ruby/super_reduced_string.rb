str = gets.chomp

regexp = /(.)\1/

while str.gsub!(regexp, '') != nil
end

puts str.empty? ? 'Empty String' : str
