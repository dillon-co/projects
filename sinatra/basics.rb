require 'rubygems'
require 'sinatra'

get '/' do
  "Hello World"
end

get '/about' do
  "a little about me."
end  

get '/hello/:name/:city' do
  "hey there #{params[:name].upcase} from #{params[:city]}"
end

get '/more/*' do
  params[:splat]
end  

get '/form' do
  erb :form
end

post '/form' do
  "You said #{params[:message]}"
end  

get '/secret' do
  erb :secret
end  

post '/secret' do
  params[:secret].reverse
end 

get '/decrypt' do
  params[:secret].reverse
end    

not_found do
  status 404
  "Sorry Charlie, that forms not here."
end