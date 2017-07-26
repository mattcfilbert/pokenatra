class Trainer < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
  belongs_to :team
  has_many :pokemons
end
