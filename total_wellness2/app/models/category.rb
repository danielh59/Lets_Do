class Category < ApplicationRecord
    belongs_to :expert
    has_many :categories_regimens
    # has_many :regimens, through: :categories_regimens

    has_and_belongs_to_many :regimens 

end
