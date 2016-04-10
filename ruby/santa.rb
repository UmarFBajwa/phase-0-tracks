#Define new Santa Class
class Santa

	attr_reader :gender, :ethnicity, :reindeer_list 
	attr_accessor :age

#Defined method to initialize Instance
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
	def reindeer_ranking
		@reindeer_list = ["Rudolph", "Dasher", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

#Defined method to list various Attributes
	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Im #{@age} years old!"
		puts "Here is a list of my reindeer:" 
		puts @reindeer_list
	end	

#Defined two attribute-changing methods as per RELEASE 2
	def celebrate_birthday
		@age = @age + 1
		puts "It's my birthday! I am #{@age} years old!"
	end

	def get_mad_at(reindeer)
		@reindeer_list = reindeer
	end
end

# #Getter methods for Attributes
# 	def gender
# 		@gender
# 	end

# 	def ethnicity
# 		@ethnicity
# 	end

#Setter methods for Attributes
	# def age= (new_age)
	# 	@age = new_age
	# end

#Created new Instance
clausia = Santa.new("Female", "Brown")

#DRIVER CODE RELEASE 0: Call methods to verify everything works...
#claus.speak
#claus.eat_milk_and_cookies("Chocolate Chip")

#DRIVER CODE RELEASE 1: 
santas = []
example_genders = ["Male", "Female", "Unknown", "Fluid", "N/A"]
example_ethnicities = ["Caucasian", "Brown", "Black", "Asian", "Secret", "Alien", "N/A"]
age = 0
example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end

#DRIVER CODE RELEASE 2:
clausia.about
clausia.age(50)
clausia.celebrate_birthday
clausia.reindeer_ranking
clausia.get_mad_at("Prancer")
clausia.get_mad_at("Rudolph")
p clausia = Santa.new("Female", "Brown")

#DRIVER CODE RELEASE 4:
puts "How many random Santas do you want to create?:"
random_santas = gets.chomp.to_i
random_santas.times do
	sample_santas = Santa.new( example_genders.sample, example_ethnicities.sample)
	sample_santas_age = rand(140)
	p sample_santas
end
