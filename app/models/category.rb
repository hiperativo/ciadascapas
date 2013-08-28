class Category < ActiveRecord::Base
	has_many :subcategories
	has_many :photos, through: :subcategories
	attr_accessible :title
end
