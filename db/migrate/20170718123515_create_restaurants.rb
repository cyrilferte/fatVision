class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :comment
      t.string :adresse
      t.string :link

      t.timestamps
    end
  end
end
