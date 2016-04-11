#Create Flight module
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

#Create Bird Class
class Bird
	include Flight
end

#Create Plane Class
class Plane
	include Flight
end

#Create instances and test
bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)


