require "rubygems"
require "sinatra"

# 1. Can start with just an array of strings, each string is the body of a post. Knowledge of Array and File.
# 2. Can add title with knowlege of Hash, could use string instead of symbol for key.
# 3. When first adding date, formatting can be left off.
# 4. Could explain how a new lines need converting to a <br /> in HTML. Introduce helper method.
# 5. Adding date formatting (#strftime) might be a good point to introduce Ruby documentation, and the fact it's ok to look stuff up.

# Further ideas:
# 1. Sort posts, created_at descending.
# 2. Use sample posts from school website or similar.
# 3. Truncate posts.

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

# Just checking the show action makes sense with this set-up. Will be fine.
# There's probably a chance here to introduce some method/class to wrap up fetching a post.

get "/:title" do |title|
  filename = "posts/#{title}.txt"
  File.open(filename) do |file|
    @post = { :title => filename[6..-5], :body => file.read, :created_at => file.mtime.strftime("%c") }
  end
  erb :show
end

__END__

@@index
<h1>My Blog</h1>

<a href="/new">New Post</a>

<% @posts.each do |post| %>
  <h2><%= post[:title] %></h2>
  <p><%= post[:body] %></p>
  <p><%= post[:created_at] %></p>
<% end %>

@@show
<h1>My Blog</h1>
<h2><%= @post[:title] %></h2>
<pre><%= @post[:body] %></pre>
<p><%= @post[:created_at] %></p>

@@new
<h1>New Post</h1>
<form action="/" method="post">
  <p>
    <label>Title</title>
    <input type="text" name="title" size="40" />
  </p>
  <p>
    <label>Body</label>
    <textarea name="body" rows="20" cols="60"></textarea>
  </p>
  <input type="submit" value="Save" />
</form>

@@layout
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <link rel="stylesheet" href="/stylesheets/screen.css" type="text/css" media="screen, projection" />
  <title>My Blog</title>
</head>
<body>
  <div id="container">
    <%= yield %>
  </div>
</body>
</html>