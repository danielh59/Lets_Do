class AddInfoToDoersAndExperts < ActiveRecord::Migration[6.1]
  def change
    add_column :doers, :bio, :text 
    add_column :doers, :user_img, :string, default: "https://www.societegenerale.lu/uploads/tx_bisgbio/default-profile.png"
    add_column :doers, :name, :string, default: 'John Doe'
    add_column :experts, :user_img, :string, default: "https://www.societegenerale.lu/uploads/tx_bisgbio/default-profile.png"
#    add_column :experts, :name, :string, default: 'Expert Joe Shmoe'
    add_column :experts, :bio, :text 
  end
end
