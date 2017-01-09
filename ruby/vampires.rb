score = 0
puts "What is your name?"
userName = gets.chomp
  if userName == "Drake Cula" || userName == "Tu Fang"
    score += 5
  else
    score += 0
  end

puts "How old are you? What year were you born?"
userAge = gets.chomp.to_i
userYear = gets.chomp.to_i
  if (2016 - userYear) != userAge
    score += 2
  else
    score += 1
  end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
gBread = gets.chomp
  if gBread == "n"
    score += 1
  else
    score += 0
  end

puts "Would you like to enroll in the company’s health insurance? (y/n)"
hInsure = gets.chomp
  if hInsure == "n"
    score += 2
  else
    score += 0
  end

puts "Do you have any allergies we should know of? Type 'done' when finished"
  while allergies = gets.chomp
    if allergies == "sunshine"
      score = 3
      puts "Any others? Type 'done' if finished"
    elsif allergies == "done"
      break
    else
      puts "Any others? Type 'done' if finished"
    end
  end



def processor(score)
  if score >= 5
    puts "Definitely a vampire"
  elsif score == 4
    puts "Almost certainly a vampire"
  elsif score == 3
    puts "Probably a vampire"
  elsif score == 1
    puts "Probably not a vampire"
  else
    puts "Results inconclusive"
  end
end
processor(score)
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
