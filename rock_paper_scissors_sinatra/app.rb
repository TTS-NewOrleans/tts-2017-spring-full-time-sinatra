require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'erb'

# Bring in the helper file
require_relative 'helpers/rock_paper_scissors.rb'

# Load the helper
helpers RockPaperScissorsHelper

get '/' do
  erb :index
end

post "/result" do
  human_move = params[:choice]
  computer_move = computer_select_move
  message = get_winner(human_move, computer_move)

  erb :result, locals: { result: message }
end