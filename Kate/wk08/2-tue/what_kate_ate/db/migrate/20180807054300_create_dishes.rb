class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :restaurant
      t.text :img_url

      t.timestamps
    end
  end
end
