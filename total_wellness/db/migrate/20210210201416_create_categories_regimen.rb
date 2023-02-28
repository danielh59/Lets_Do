class CreateCategoriesRegimen < ActiveRecord::Migration[6.1]
  def change
    create_table :categories_regimen do |t|
      t.integer :category_id 
      t.integer :regimen_id
      t.timestamps
    end
  end
end
