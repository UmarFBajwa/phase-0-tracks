#Define new class Santa
class Santa

#Defined method to initialize instance
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		puts "Initializing Santa instance..."
	end

#Defined method when called puts statement
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

#Defined method when called puts statement taking an argument
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
		x
	end

#Defined method that has an array that reindeer_ranking
	def reindeer
		@reindeer_ranking = ["Rudolph", "Dasher", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Im #{@age} years old!"
		puts "Here is a list of my reindeer:" 
		puts reindeer
	end	

	def age(years)
		@age = years
		puts "I am #{@age} years old!"
	end
end

#Created new instance
clausia = Santa.new("Female", "Brown")
clausia.speak
clausia.about
clausia.age(50)


#DRIVER CODE: RELEASE 0: Call methods to verify everything works...
#claus.speak
#claus.eat_milk_and_cookies("Chocolate Chip")


#DRIVER CODE: RELEASE 1


#santas = []
#example_genders = ["Male", "Female", "Unknown", "Fluid", "N/A"]
#example_ethnicities = ["Caucasian", "Brown", "Black", "Asian", "Secret", "Alien", "N/A"]
#example_genders.length.times do |i|
# santas << Santa.new(example_genders[i], example_ethnicities[i])
# end