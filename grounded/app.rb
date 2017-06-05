require 'sinatra'
require 'pry'
require 'erb'

get '/' do
  erb :form
end

post '/response' do
  greeting = params[:greeting]
  parents_answer = "WHAT DO YOU MEAN, #{greeting.upcase}??? YOU'RE GROUNDED!!!"

  erb :parent_response, locals: { response: parents_answer }
end