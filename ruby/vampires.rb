#Users

puts "How many Users do you have?"
users = gets.chomp
users = users.to_i

#Survey

until users == 0
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp

  puts "What year were you born in?"
  birth_year = gets.chomp

  puts "Would you like some garlic bread?"
  bread = gets.chomp

  puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp

  hasVampireAllergies = false
  until hasVampireAllergies
    puts "Do you have any allergies?"
    allergies = gets.chomp
    hasVampireAllergies = allergies == "done" || allergies == "sunshine"
  end  
  

  if name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire."
  elsif insurance == "yes" && bread == "yes" && age = "2016-#{birth_year}"
    puts "Probably not a vampire."
  elsif hasVampireAllergies || (insurance == "waives" && bread == "no" && age != "2016-#{birth_year}")
    puts "Probably a vampire."
  else
    puts "Results inconclusive."
  end

  users -= 1
end

#Regrets

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
