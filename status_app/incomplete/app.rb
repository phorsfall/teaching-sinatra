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
  
  @statuses.reverse!
  erb :index
end

post "/form_test" do
  params.inspect
end

post "/update" do
  status = "Should come from params..."
  File.open("status.txt", "a") do |file|
    file.write status + "|" + Time.now.to_s + "\n"
  end
  redirect "/"
end