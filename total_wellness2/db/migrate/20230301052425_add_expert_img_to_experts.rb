class AddExpertImgToExperts < ActiveRecord::Migration[7.0]
  def change
    add_column :experts, :expert_img, :string
  end
end
