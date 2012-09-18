class PagesController < ApplicationController
	def index
 		@contato = Contato.new
	end
end