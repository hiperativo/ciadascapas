class ProdutosController < ApplicationController
	def show
		@category = Category.find_by_permalink params[:category]
		@tags = @category.tags
		@fotos = @category.products & ( @tag.blank? ? @category.products : @tag.products)

		@title = case params[:category]
			when "capas-para-sofa" then "Capas de Sofá"
			when "cortinas" then "Cortinas Personalizadas"
			when "almofadas" then "Almofadas Descoladas"
			when "persianas" then "Persianas para casa e escritório"
			when "tapetes" then "Tapetes de pelo alto e baixo"
		end

	end

end
