class Regimen < ApplicationRecord
    validate :is_title_case
    before_validation :make_title_case
    has_and_belongs_to_many :categories

=begin
    has_many :categories_regimens
    has_many :categories, through: :categories_regimens


    def categories_attributes=(category_attributes)
        category_attributes.values.each do |category_attribute|
          category = Category.find_or_create_by(category_attribute)
          self.categories_regimens.build(category: category)
        end
    end
=end

    def self.by_category(category_id)
        where(category: category_id)
    end


    private

    def is_title_case
        if title.split.any?{|w|w[0].upcase != w[0]}
            errors.add(:title, "Title must be in title case")
        end
    end

    def make_title_case
        self.title = self.title.titlecase
    end
end
