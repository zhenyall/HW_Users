require_relative 'pet'
require_relative '../users/init'

while true do
  unless @pet
    puts '1. Create pet'
  else
    puts '2. Play with pet'
    puts '3. Feed pet'
    puts '4. Bathing pet'
    puts '5. Walk with pet'
    puts '6. Go to sleep'
    puts '7. Play with..'
    puts '8. End walk'
    puts '9. Go sleep'
    puts '10. Option three'
  end
  puts 'help'
  puts 'exit' 
  print 'Please choose option. Type number >'

  option = gets.chomp

  case option
  when '1'
    puts "Okay, creating a pet..."
    print "Please type an animal you want to use: >"
    animal = gets.chomp
    print "Thanks, we got #{animal}. Please provide the name for your animal: >"
    name = gets.chomp
    @pet = Pet.new(animal, name)
    puts "We sucessfully created a pet for you: #{@pet}"
  when '2'
    @pet.play
  when '3'
    @pet.food
  when '4'
    @pet.bathing
  when '5'
    @pet.walk
  when '6'
    @pet.goTosleep
  when '7'
    @pet.play_with
  when '8'
    @pet.end_of_the_walk
  when '9'
    @pet.gosleep
  when '10'
    puts "Option three chosen"
  when 'help'
    puts "Welcome to my pet"
    puts "[Create pet] -" ' create new pet with index and name'
    puts "[Play with pet] -" ' lets you play with the pet'
    puts "[Feed pet] -" ' here you can feed your pet'
    puts "[Bathing pet] -" ' the opportunity to bathe your pet'
    puts "[Walk with pet] -" ' walk your pet'
    puts "[Go to sleep] -" ' send your pet to sleep'
    puts "[Play with..] -" ' play with your pet'
    puts "[End walk] -" ' walk your pet'
    puts "[Go sleep] -" ' here you can send your pet to sleep'
    puts "[Option three] -" ' all option'
  when 'exit'
    break
  else
    puts "Invalid input."
  end

  puts "\n"
end
