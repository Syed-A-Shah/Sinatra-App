require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/' do
  "Hello"
end

get '/secret' do
  "this page u have fallen upon is top notch secret"
end

get '/cat' do
  erb(:index)
end
