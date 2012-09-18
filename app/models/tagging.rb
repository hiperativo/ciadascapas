class Tagging < ActiveRecord::Base
	belongs_to :product
	belongs_to :category
	belongs_to :tag
end