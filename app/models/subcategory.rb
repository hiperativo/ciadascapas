class Subcategory < ActiveRecord::Base
	has_many :products
	belongs_to :category

	attr_accessible :name, :description, :category_id
end
