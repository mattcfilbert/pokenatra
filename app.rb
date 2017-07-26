require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load specific routes / controllers
require_relative 'controllers/teams.rb'
require_relative 'controllers/trainers.rb'
require_relative 'controllers/pokemons.rb'


# Load models
require_relative 'models/pokemon'
require_relative 'models/trainer'
require_relative 'models/team'

get '/' do
  erb :home
end
