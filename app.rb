require 'sinatra'

# get '/' do
#   'hello, world!'
# end

get '/' do
  erb :index #,:layout => :page
end

get '/about' do
  erb :about
end

get '/palindrome' do
  erb :palindrome
end