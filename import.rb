require "./db/setup"
require "./lib/all"
require "csv"

CSV.foreach("characters.csv", headers: true) do |row|
  c = Character.new
  c.name    = row[0]
  c.species = row[1]
  c.height  = row[2]
  c.weight  = row[3]
  c.save
end
