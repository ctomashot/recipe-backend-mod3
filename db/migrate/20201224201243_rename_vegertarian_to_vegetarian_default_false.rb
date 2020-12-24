class RenameVegertarianToVegetarianDefaultFalse < ActiveRecord::Migration[6.0]
  def change
    change_column :recipes, :vegetarian, :boolean, :default => false
    change_column :recipes, :vegan, :boolean, :default => false
  end
end
