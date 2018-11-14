require "sinatra"

get "/" do
  "OMG, hello Ruby Monstas!"
end

#get "/monstas/:name" do
 # "Hello #{params["name"]}!"
#end

#get "/monstas/:name" do
 # params.inspect
#end

require "sinatra"
require "erb"

#get '/monstas/:name' do
  #erb :monstas, { :locals => params }
#end

get '/monstas/:name' do
  erb "<h1>Hello <%= name %></h1>", { :locals => params }
end
get '/monstas/:name' do
  template = "<h1>Hello <%= name %></h1>"
  layout   = "<html><body><%= yield %></body></html>"
  erb template, { :locals => params, :layout => layout }
end