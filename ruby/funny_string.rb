# https://www.hackerrank.com/challenges/funny-string
def funny?(str)
  reversed_str = str.reverse
  (1...str.length).each do |index|
    if (str[index].ord - str[index - 1].ord).abs != (reversed_str[index].ord - reversed_str[index - 1].ord).abs
      return false
    end
  end

  true
end

num_cases = gets.chomp.to_i
cases = []
num_cases.times do
  cases << gets.chomp 
end

cases.each do |str|
  puts funny?(str) ? 'Funny' : 'Not Funny'
end
