require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

get '/secret' do
  "this page u have fallen upon is top notch secret"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end
