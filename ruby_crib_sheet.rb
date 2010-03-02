# Ruby Crib Sheet

# Numbers

# Integers
puts 1 + 2 # => 3
puts 2 * 3 # => 6
puts 5 - 8 # => -3
puts 9 / 2 # => 4

# Floats
puts 1.0 + 2.0 # => 3.0
puts 2.0 * 3.0 # => 6.0
puts 5.0 - 8.0 # => -3.0
puts 9.0 / 2.0 # => 4.5

# Using Brakets
puts 5 * (12-8) - 15 # => 5

# Strings

# Can use single or double quotes
puts 'Hello' # => Hello
puts "Ruby"  # => Ruby

# Joining strings
puts "I like " + "apple pie." # => I like apple pie.
puts '2' + '2' # => 22

# Multiplying by a number
puts "Blink " * 3 # => Blink Blink Blink

# Strings with quotes
puts "You're swell"  # => You're swell
puts 'You\'re swell' # => You're swell
puts "up\\down"      # => up\down

# Variables

# Assignment
name = "Paul"
puts "My name is " + name + "." # => My name is Paul.

var = 5 * (1+2)
puts var # => 15

# Conversions
puts "2".to_i + "2".to_i # => 4
puts 2.to_f # => 2.0
puts 22.to_s * 3 # => 222222

# Other Methods
gets # => Returns text entered up to an including the return
gets.chomp # => chomp removes the return from the end of the string