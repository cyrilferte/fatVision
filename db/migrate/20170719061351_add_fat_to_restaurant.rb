class AddFatToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :fat, :boolean
    add_column :restaurants, :healthy, :boolean
  end
end
