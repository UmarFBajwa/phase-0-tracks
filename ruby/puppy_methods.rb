#RELEASE 1: Create Puppy Class and add several Methods including Initialize

class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
    puts  "Methods Available: speak, roll_over, dog_years, play_dead"
  end 
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
      int.to_i.times do |x| p "Woof" end
  end
 
  def roll_over
      puts "*rolls over*"
  end
  
  def dog_years(int)
      puts int * 7
  end
  
  def play_dead
      puts "*falls to the floor*"
  end
  
end

skip = Puppy.new

#Driver Code: Call methods on instance to vertify everything works.

skip.fetch("ball")
skip.speak(5)
skip.roll_over
skip.dog_years(1)
skip.play_dead

#RELEASE 2: Create new class called Cat

class Cat  
  
  def initialize
    puts "Initializing new cat instance ..."
    puts "Methods Available: destroy, speak"
  end 
  
  def destroy(thing)
    puts "Why is the #{thing} ripped apart ? !"
    thing
  end

  def roar(int)
    int.times { puts "Meow!"}
  end
  
end 


sam = Cat.new

#Driver Code: Calls destroy method using couch as an argument and roar method using 1 as an argument.
sam.destroy("couch")
sam.roar(1)

#Create empty array
Cats = []

#Create 50 instances and store each into Cats array
50.times {Cats << Cat.new}

#Alternate Way to the above:
#i = 0
#while i <= 50
#  cat = Cat.new
#  Cats << cat
#  i += 1
#end
  
p Cats

#Iterate using built in method each, which selects each instance and call the destroy and speak methods

Cats.each do |x|
  x.destroy("couch")
  x.roar(1)
end  





