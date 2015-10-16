class AddTableColumn < ActiveRecord::Migration
  def change
    add_column :characters, :img_url, :string
  end
end
