Ruby Cheat Sheet
================

Numbers
=======

Integers
----------

    puts 1 + 2 # => 3
    puts 2 * 3 # => 6
    puts 5 - 8 # => -3
    puts 9 / 2 # => 4

Floats
------

    puts 1.0 + 2.0 # => 3.0
    puts 2.0 * 3.0 # => 6.0
    puts 5.0 - 8.0 # => -3.0
    puts 9.0 / 2.0 # => 4.5

Using Brakets
-------------

    puts 5 * (12-8) - 15 # => 5

Strings
=======

Can use single or double quotes
-------------------------------

    puts 'Hello' # => Hello
    puts "Ruby"  # => Ruby

Joining strings
---------------

    puts "I like " + "apple pie." # => I like apple pie.
    puts '2' + '2' # => 22

Multiplying by a number
-----------------------

    puts "Blink " * 3 # => Blink Blink Blink

Strings with quotes
-------------------

    puts "You're swell"  # => You're swell
    puts 'You\'re swell' # => You're swell
    puts "up\\down"      # => up\down
  
String Methods
--------------

    puts "ruby".upcase # => RUBY
    puts "RUBY".downcase # => ruby
    puts "ruby".capitalize # => Ruby

Variables
=========

Assignment
----------

    name = "Paul"
    puts "My name is " + name + "." # => My name is Paul.

    var = 5 * (1+2)
    puts var # => 15

Conversions
===========

    puts "2".to_i + "2".to_i # => 4
    puts 2.to_f # => 2.0
    puts 22.to_s * 3 # => 222222

Comparison Methods
==================

    puts 1 > 2 # => false
    puts 1 < 2 # => true

    puts 5 >= 5 # => true
    puts 5 <= 4 # => false

    puts 1 == 1 # => true
    puts 1 != 2 # => true

Branching
=========

Using `if`:

    score = 100
    high_score = 900
    
    if score > high_score
      puts "Congratulations, new high score!"
    end

Using `if` and `else`:

    balance = 10
    
    if balance >= 0
      puts "In credit"
    else
      puts "In debit"
    end

Using `if`, `elsif` and `else`:

    age = 16
    
    if age < 14
      puts "Under 14s"
    elsif age < 16
      puts "Under 16s"
    else
      puts "16 and over"
    end

Arrays
======

Creating arrays:

    [] # An empty array.
    [5]
    ['Hello', 'Goodbye']
    [89.9, 'vanilla', [true, false]]

Accessing arrays:

    names = ['Tom', 'George', 'Bill']
    puts names[0] # => Tom
    puts names[1] # => George
    puts names[2] # => Bill
    puts names[3] # => nil

The .each method:

    languages = ['English', 'French', 'Ruby']
    
    languages.each do |language|
      puts 'I love ' + language
    end

More array methods:

    foods = ['cheese', 'eggs', 'ham']
    
    puts foods.join(', ') # => cheese, eggs, ham
    
    # Return the last item from the array.
    puts foods.last # => ham
    puts foods.length # => 3
    
    # Return the last item from the array and remove it.
    puts foods.pop # => ham
    puts foods.length # => 2
    
    # Add an item to the end of the array.
    foods.push 'bread'
    puts foods.join(', ') # => cheese, eggs, bread
    
    foods.reverse # => ['bread', 'eggs', 'cheese']
    foods.sort # => ['bread', 'cheese', 'eggs']

Some other methods we've used on strings, also work on arrays. Try `+` and `*` and see what they do.


Other methods
=============

    gets # => Returns text entered up to and including the return
    gets.chomp # => chomp removes the return from the end of the string