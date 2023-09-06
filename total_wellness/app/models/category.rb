class Category < ApplicationRecord
    has_many :categories_regimens
    # has_many :regimens, through: :categories_regimens

    has_and_belongs_to_many :regimens 

end
