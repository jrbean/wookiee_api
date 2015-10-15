class CreateTable < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :species
      t.string :height
      t.string :weight
      t.text   :body
    end

  end
end
