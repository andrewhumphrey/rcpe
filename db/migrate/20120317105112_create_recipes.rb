class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.decimal :rating
      t.text :ingredients
      t.text :method

      t.timestamps
    end
  end
end
