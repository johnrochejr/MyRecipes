class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :Dish
      t.text :Description
      t.date :Date

      t.timestamps
    end
  end
end
