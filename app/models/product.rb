class Product < ActiveRecord::Base
	validates :photo, :presence => true
	has_many :categorizations
	has_many :categories, :through => :categorizations
	belongs_to :subcategory

	has_many :taggings
	has_many :tags, :through => :taggings

	mount_uploader :photo, PhotoUploader

	attr_accessor :keywords, :hint

	attr_accessible :name, :description, :photo, :category_id, :label, :subcategory_id

	def keywords
		self.keywords = "#{self.categories.collect(&:name)}. #{self.hint}" || ""
	end

	def hint
		tags = self.tags.collect(&:name)
		last_tag = tags.pop
		self.hint = "#{tags.join(", ")} e #{last_tag}" || ""
	end

end
