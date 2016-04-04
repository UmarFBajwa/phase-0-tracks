#Define a method that swaps the spy's Real Name by shifting Vowels and Consonants by 1.

def swap (name)
	swapping = name.split.rotate.join(" ") 
	swapping.downcase!  
	name1 = swapping.tr("aeiou", "eioua") 
	name2 = name1.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")
	name3 = name2.split.map(&:capitalize).join(" ") 
end

#Initialize empty hash to store Real and Fake Names.

combined_names = {}

#Welcomes Spy and asks for Real First and Last Names.

#Define a method that swaps the spy's Real Name by shifting Vowels and Consonants by 1.

def swap (name)
	swapping = name.split.rotate.join(" ") 
	swapping.downcase!  
	name1 = swapping.tr("aeiou", "eioua") 
	name2 = name1.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")
	name3 = name2.split.map(&:capitalize).join(" ") 
end

#Initialize empty hash to store Real and Fake Names.

combined_names = {}

#Welcomes Spy and asks for Real First and Last Names.

puts "Welcome Spy. Please provide your real First and Last Name. Type done when complete:"

input = false
until input == true

	real_name = gets.chomp

#Exits Program when "Done". Otherwise keeps swapping names by shifting vowels and consonants accordingly.

	if real_name == "done"
		puts "Excellent:"
		input = true
	else
		fake_name = swap(real_name)
		combined_names[real_name] = fake_name
		puts "Please provide another real First and Last Name:"
	end
	
end

#Prints Name Array including Real and Fake Names

combined_names.each {|real_name, fake_name| puts "#{real_name} is now #{fake_name}"}
