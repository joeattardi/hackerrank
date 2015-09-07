require 'date'

def read_date
  input = gets.chomp
  dmy = input.split.map { |s| s.to_i }
  Date.new(*dmy.reverse)
end

date_returned = read_date
due_date = read_date

fine = 0
if date_returned > due_date
  if date_returned.year > due_date.year
    fine = 10000
  elsif date_returned.month > due_date.month
    fine = 500 * (date_returned.month - due_date.month)
  else
    fine = 15 * (date_returned.day - due_date.day)
  end
end

puts fine