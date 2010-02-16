require "rubygems"
require "sinatra"

get "/" do
  @posts = []
  Dir.glob("posts/*.txt") do |filename|
    File.open(filename) do |file|
      @posts << file.read
    end
  end
  erb :index
end

__END__

@@index
<html>
<body>
  <h1>My Blog</h1>
  <% @posts.each do |post| %>
    <p><%= format post %></p>
    <hr />
  <% end %>
  </body>
</html>