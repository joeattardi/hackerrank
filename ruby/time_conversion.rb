input_time = gets.chomp
ampm = input_time[-2..-1]
hhmmss = input_time[0..-3].split(":")

hours = hhmmss[0].to_i
if ampm == "AM" && hours == 12
  hhmmss[0] = "00"
elsif ampm == "PM" && hours < 12
  hhmmss[0] = hours + 12
end

puts hhmmss.join(":")