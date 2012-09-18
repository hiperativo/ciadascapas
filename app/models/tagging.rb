class Tagging < ActiveRecord::Base
	belongs_to :product
	belongs_to :category
	belongs_to :tag

	attr_accessible :product_id, :tag_id, :category_id
end