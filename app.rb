require 'sinatra/base'
require './db/setup'
require './lib/all'

class App < Sinatra::Base

  get "/:name" do
    char_name = params[:name]
    n = Character.find_by(name: char_name)

    # user_hashes = []
    # t.users.each do |u|
    #   user_hashes.push({ name: u.name, email: u.email })
    # end
    #result_hash = n.characters.map do |i|
      #{ name: i.name, species: i.species, height: i.height, weight: i.weight }
  { results:  {
    name: n.name,
    species: n.species,
    height: n.height,
    weight: n.weight
    }
  }.to_json
  end



end

App.run!
