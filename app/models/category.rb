class Category < ActiveRecord::Base
	has_many :categorizations
	has_many :products, :through => :categorizations

	has_many :taggings, :dependent => :destroy
	has_many :tags, :through => :taggings

	has_many :subcategories

	before_save :add_permalink

	attr_accessible :name, :sort, :permalink, :description

	def add_permalink
		self.permalink = self.name.parameterize if self.permalink.blank?
	end
end
