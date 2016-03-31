#Ask ID to provide Client's Name.
puts "What is the Client's Name?"
	name = gets.chomp

#Ask ID Client's Age.
puts "What is the Client's Age"
	age = gets.chomp

#Ask ID how many children Client has.
puts "How many children do they have?"
	children = gets.chomp

#Ask ID if Client wants a summer theme.
puts "Do they want a Summer theme?"
	summer = gets.chomp

#Create and print Hash
client_data = {
	name: name,
	age: age,
	children: children,
	summer: summer,
}

p "#{client_data}"

#Ask ID if he/she wants to update any key.
puts "Do you want to change any key?"
	key = gets.chomp

if key == 'yes'
	puts "please enter which key:"
	key_to_update = gets.chomp
	puts "please enter the new value"
	value_update = gets.chomp
	client_data[key_to_update.to_sym] = value_update	
end

puts "#{client_data}"

