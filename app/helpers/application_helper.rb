# encoding: UTF-8
module ApplicationHelper
	def icon(thing)
		hamly "%i{:class => 'icon-#{thing}'}"
	end

	def close_button
		hamly "%a.close ×"
	end

	def hamly(stuff)
		engine = Haml::Engine.new(stuff)
		engine.render
	end

	def is_active?(item)
		unless item == "contato"
			"active" if item == params[:category]
		else
			"active" if params[:controller] == "contatos"
		end
	end
end
