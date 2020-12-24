class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :content
      t.string :image
      t.string :ingredients
      t.integer :user_id
      t.boolean :vegetarian, :default => false
      t.boolean :vegan, :default => false

      t.timestamps
    end
  end
end
