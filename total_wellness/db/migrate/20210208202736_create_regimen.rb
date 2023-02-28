class CreateRegimen < ActiveRecord::Migration[6.1]
  def change
    create_table :regimen do |t|
      t.string :img
      t.string :title
      t.text :description
      t.integer :expert_id
      t.timestamps
    end
  end
end
