def read_numbers
  gets.chomp.split(' ').map { |num| num.to_i }
end

num_chapters, page_problems = read_numbers
chapter_problems = read_numbers

specials = 0

chapter = 1
page = 1
problem = 1
while chapter <= num_chapters
  problem = 1
  while problem <= chapter_problems[chapter - 1]
    puts "Page #{page}, Chapter #{chapter}, Problem #{problem}"
    specials += 1 if problem == page
    problem += 1
    if problem % (page_problems) == 0
      page += 1
    end
  end
  chapter += 1
  page += 1
  puts ""
end

puts specials
