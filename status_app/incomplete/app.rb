require 'rubygems'
require 'sinatra'

get "/" do
  # An array in which we'll store all status updates.
  @statuses = []
  
  File.open("status.txt") do |file|
    file.each_line do |line|
      # This block of code will be called for each line in status.txt.
      # The "line" variable will be a string that includes the whole line.
      # e.g. "Hello world|19 May 2010"
      
      # TODO: Split the line into an array containing the text and the date.
      # e.g. ["Hello world", "19 May 2010"]
      # UNCOMMENT AND COMPLETE THE NEXT LINE.
      #status = ...
      
      # TODO: Create text and date variables from the array.
      # UNCOMMENT AND COMPLETE THE NEXT 2 LINES.
      #text = ...
      #date = ...
      
      # Each status should be stored as a hash. e.g.
      # { "text" => "Hello world", "date" => "19 May 2010" }
      
      # TODO: Use the text and date variables to add a hash to the statuses array.
      # UNCOMMENT AND COMPLETE THE NEXT LINE.
      #@statuses ...
    end
  end
  erb :index
end