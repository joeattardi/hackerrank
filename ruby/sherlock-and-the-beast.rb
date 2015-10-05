def largest_decent_number(num_digits)
  i = num_digits
  while i >= 0 do
    if (i) % 3 == 0 && (num_digits - i) % 5 == 0
      break
    end
      i -= 1
  end

  if i == -1
    return -1
  end

  result = ''
  i.times { result << '5'}
  (num_digits - i).times { result << '3' }

  result
end

n = gets.to_i

n.times do
  num_digits = gets.to_i
  puts largest_decent_number(num_digits)
end