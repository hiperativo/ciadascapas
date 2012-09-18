# encoding: utf-8
class PagesController < ApplicationController
	def index
 		@contato = Contato.new
	end
end