require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/team'
require_relative '../models/trainer'
require_relative '../models/pokemon'


Pokemon.destroy_all
Trainer.destroy_all

rocket = Team.create(name: "Rocket")
carrot = Team.create(name: "Carrot")

gizmo = Trainer.create(name: "Gizmo", level: rand(100), img_url: "http://orig08.deviantart.net/7671/f/2016/192/a/1/pokemon_trainer_jordy_by_ravenide-da9m0mx.png", team: rocket)
fidget = Trainer.create(name: "Fidget", level: rand(100), img_url: "https://vignette4.wikia.nocookie.net/fantendo/images/e/ee/LucasPt.png/revision/latest?cb=20131020152128", team: carrot)

Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg", trainer: gizmo)
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg", trainer: gizmo)
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg", trainer: gizmo)
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg", trainer: gizmo)
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg", trainer: fidget)
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg", trainer: fidget)
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg", trainer: fidget)
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg", trainer: fidget)
