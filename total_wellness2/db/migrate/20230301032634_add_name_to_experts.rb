class AddNameToExperts < ActiveRecord::Migration[7.0]
  def change
    add_column :experts, :name, :string
  end
end
