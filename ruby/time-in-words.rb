=begin
Given the time in numerals we may convert it into words, as shown below:

5:00 five o' clock
5:01 one minute past five
5:10 ten minutes past five
5:30 half past five
5:40 twenty minutes to six
5:45 quarter to six
5:47 thirteen minutes to six
5:28 twenty eight minutes past five

Write a program which prints the time in words for the input given in the format mentioned above.

Input Format

There will be two lines of input:
H, representing the hours
M, representing the minutes

Constraints
1≤H<12
0≤M<60
Output Format

Display the time in words.
=end

BASIC_NUMBERS = ['twelve', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen',
  'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty', 'twenty one', 'twenty two', 'twenty three',
  'twenty four', 'twenty five', 'twenty six', 'twenty seven', 'twenty eight', 'twenty nine']
SPECIAL_VALUES = { 15 => 'quarter', 30 => 'half' }

def number_to_text(number)
  if SPECIAL_VALUES.has_key?(number)
    return SPECIAL_VALUES[number]
  elsif number < BASIC_NUMBERS.length
    return BASIC_NUMBERS[number]
  end
end

def minute_phrase(minutes)
  if SPECIAL_VALUES.has_key?(minutes)
    return ''
  else
    return minutes == 1 ? 'minute ' : 'minutes '
  end
end

hours = gets.chomp.to_i
minutes = gets.chomp.to_i

direction = minutes <= 30 ? 'past' : 'to'
if minutes > 30
  minutes = 60 - minutes
  hours = (hours + 1) % 12
end

if minutes == 0
  puts "#{number_to_text(hours)} o' clock"
else
  puts "#{number_to_text(minutes)} #{minute_phrase(minutes)}#{direction} #{number_to_text(hours)}"
end
