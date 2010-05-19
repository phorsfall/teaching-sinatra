require 'rubygems'
require 'sinatra'

get "/" do
  @statuses = []
  File.open("status.txt") do |file|
    file.each_line do |line|
      status = line.split("|")
      text = status[0]
      date = status[1]
      @statuses.push({ "text" => text, "date" => date })
    end
  end
  erb :index
end