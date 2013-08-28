class ContactsController < ApplicationController
	def index
		redirect_to action: :new
	end

	def new
	end
end
