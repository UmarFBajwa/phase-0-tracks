# #RELEASE 1
# #Create a module Shout and add methods declared on the self keyword
# module Shout
# 	def self.yell_angrily(words)
# 	words + "!!!" + " :("
#   	end

#   	def self.yelling_happily(words)
#   	words + "!!!!!! :)"
#   	end
# end

# #DRIVER CODE
# Shout.yell_angrily("WTF")
# Shout.yelling_happily("DBC")

#RELEASE 2
#Create Shout module which has the method yell (makes it sounds more pissed off)
module Shout
	def yell(words)
	puts "#{words.upcase}! GRRRR :("
	end
end

#Create Mob Class
class Mob
	include Shout
end

#Create Angry GF Class
class Angry_GF
	include Shout
end

#DRIVER CODE: Test by creating new instance and calling yell method
mob = Mob.new
mob.yell("kill them all!")

girlfriend = Angry_GF.new
girlfriend.yell("how could you?!?")