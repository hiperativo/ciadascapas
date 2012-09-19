class Tag < ActiveRecord::Base
	has_many :taggings, :dependent => :destroy
	has_many :products, :through => :taggings
	has_many :category, :through => :taggings

	attr_accessor :purposes

	attr_accessible :name, :description, :purpose, :permalink

	private

	def self.purposes
		#group("purpose").
		select("DISTINCT purpose").collect(&:purpose)
	end
	
	before_save :add_permalink

	def add_permalink
		self.permalink = self.name.parameterize if self.permalink.blank?
	end

end
