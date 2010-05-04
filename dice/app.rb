require 'rubygems'
require 'sinatra'

get "/" do
  @die1 = rand(6) + 1
  @die2 = rand(6) + 1
  erb :dice
end
