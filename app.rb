require 'sinatra/base'
require './db/setup'
require './lib/all'

class App < Sinatra::Base

  def check_name name
      name_to_check = name

      results_arr = []
      Character.all.each do |c|
        if c[:name].downcase.include? name_to_check.downcase
          {
            name: c.name,
            species: c.species,
            height: c.height,
            weight: c.weight
            }
          #c.merge(affiliations: c.affiliations.map { |a| a[:name] })
          results_arr << c
        end
      end
      { results: results_arr }.to_json
    end



  get "/:name" do
    check_name params[:name]
    # n = Character.find_by(name: char_name)

    # user_hashes = []
    # t.users.each do |u|
    #   user_hashes.push({ name: u.name, email: u.email })
    # end
    #result_hash = n.characters.map do |i|
      #{ name: i.name, species: i.species, height: i.height, weight: i.weight }
  # { results:  {
  #   name: n.name,
  #   species: n.species,
  #   height: n.height,
  #   weight: n.weight
  #   }
  # }.to_json
  end



end

App.run!
