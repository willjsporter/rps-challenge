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

  end



  run! if app_file == $0
end
