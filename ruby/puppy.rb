#RELEASE 0

#SPECIES ------------------------
# Puppy

# CHARACTERISTICS ----------------
# Eyelash length: varies
# Friendly: extremely
# Eye count: 2
# Name: varies
# Color: varies

# BEHAVIOR -----------------------
# Roll Over
# Fetch
# Play Dead
# Bark

#RELEASE 1

#Declare new Puppy class
class Puppy
end

#Ask class what methods are available
Puppy.methods

#Create three unique instances
duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

#Call various instance methods
spot.class
duchess == fido
fido.instance_of?(Array)
fido.instance_of?(Puppy)
spot.play_dead
