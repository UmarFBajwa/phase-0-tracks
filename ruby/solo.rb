#RELEASE 0 & 1
#Superhero Class:
#Name
#Superpower
#Age


#Create Superhero Class 
class Superhero

#Use getter and setter shortcuts access attributes
attr_reader :name, :age 
attr_accessor :superpower 

#Define method to initialize instance with name, superpower and age
def initialize(name, superpower, age)
	puts "Initializing Superhero..."
	@name = name
	@superpower = superpower
	@age = age
end

#Define method that calls Superhero's Pledge to protect the innocent
def oath
	puts "I, #{:name}, promise to uphold my oath: to protect the innocent, carry the weak, and seek justice for all!"
end

#Define method that allows the Superhero to use his or her Superpower against a villain
def attack
	if @superpower == "laser vision" || "omega beams"
		puts "Boom, let's see if you can handle my #{@superpower}!"
	elsif @superpower == "super strength" || "super speed" || "super hearing" || "astral projection"
		puts "You are no match for my #{@superpower}!"
	else
		puts "No evil will escape me!"
	end
end	
end	

#example_superpowers = ["laser vision", "super strength", "super speed", "immortality", "telekinesis", "omega beams", "ability to speak with animals", "size shifting", "elasticity", "super hearing", "flying", "web slinging", "astral projection"]

#Test Superhero Class by creating new instance ironman and calling oath and attack methods
ironman = Superhero.new("Ironman", "laser vision", 30)
ironman.oath
ironman.attack



#RELEASE 2

#Create empty array
justice_league = []

#Prompt User to provide Attributes of new Superhero
puts "Superman! Batman! They are all missing. Let's use the Superhero Creator to add some Superheros to the Justice League!:"
puts ""

input = false
until input
	
	puts "What is the name of your Superhero?"
	name = gets.chomp

	puts "What is his or her superpower?:"
	superpower = gets.chomp

	puts "How old is he or she?"
	age = gets.chomp.to_i

#Create instance
	justice_league << Superhero.new(name, superpower, age)

#Prompt User if done or not
	puts "Do you want to add another Superhero? (When complete type done)"
	answer = gets.chomp
	if answer == "done"
		input = true
	end
end

#Thank you. Share how many Superheroes created
puts "Thanks for using the Superhero Creator. You've added #{justice_league.length} heroes:"

#List each Superhero
justice_league.each_index { |x| puts "Name: #{justice_league[x].name}, Power: #{justice_league[x].superpower} , Age: #{justice_league[x].age}"}

