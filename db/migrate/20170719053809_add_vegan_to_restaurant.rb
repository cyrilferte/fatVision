class AddVeganToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :vegetarian, :boolean
    add_column :restaurants, :vegan, :boolean
    add_column :restaurants, :carte_restaurant, :boolean
    add_column :restaurants, :halal, :boolean
    add_column :restaurants, :casher, :boolean
  end
end
