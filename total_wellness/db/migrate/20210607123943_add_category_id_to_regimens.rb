class AddCategoryIdToRegimens < ActiveRecord::Migration[6.1]
  
  def change
    add_column :regimen, :category_id, :integer
  end 

end