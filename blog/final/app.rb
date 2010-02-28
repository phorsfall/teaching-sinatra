require "rubygems"
require "sinatra"

get "/favicon.ico" do
end

# 1. Can start with just an array of strings, each string is the body of a post. Knowledge of Array and File.
# 2. Can add title with knowlege of Hash, could use string instead of symbol for key.
# 3. When first adding date, formatting can be left off.
# 4. Could explain how a new lines need converting to a <br /> in HTML. Introduce helper method.
# 5. Adding date formatting (#strftime) might be a good point to introduce Ruby documentation, and the fact it's ok to look stuff up.

# Further ideas:
# 1. Sort posts, created_at descending.
# 2. Use sample posts from school website or similar.
# 3. Truncate posts.
# 4. There's probably a chance here to introduce some method/class to wrap up fetching a post.

get "/" do
  @posts = []
  Dir.glob("posts/*.txt") do |filename|
    File.open(filename) do |file|
      @posts << { :title => filename[6..-5], :body => file.read, :created_at => file.mtime.strftime("%c") }
    end
  end
  erb :index
end

get "/new" do
  erb :new
end

post "/" do
  filename = "posts/#{params[:title]}.txt"
  
  File.open(filename, "w") do |file|
    file.write params[:body]
  end
  
  redirect "/"
end

get "/:title" do |title|
  filename = "posts/#{title}.txt"
  File.open(filename) do |file|
    @post = { :title => filename[6..-5], :body => file.read, :created_at => file.mtime.strftime("%c") }
  end
  erb :show
end