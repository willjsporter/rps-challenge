require 'sinatra'
require 'sinatra/base'
require 'shotgun'
require 'rack'

require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    "Hello, world!"
    erb :index
  end

  post '/names' do
    session[:p1_name] = params[:player1]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end



  run! if app_file == $0
end
