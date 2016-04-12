class Dancer
	attr_reader :name
	attr_accessor :age, :card

	def initialize(name, age)
		puts "Initializing dancer ..."
		@name = name
		@age = age
		@card = []
	end

	def pirouette
		p "*twirls*"
	end

	def bow
		p "*bows*"
	end

	def queue_dance_with(x)
		@card.push(x)
	end

	def begin_next_dance
    	p "Now dancing with #{@card.shift}."
  	end

	def fall
		p "#{@name} just fell. OMG!"
	end
end