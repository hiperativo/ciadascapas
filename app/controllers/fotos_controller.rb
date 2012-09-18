class FotosController < ApplicationController
  def index
  	@category = Category.find_by_permalink params[:category]
  	@tag = Tag.find_by_permalink params[:tag]
  	@tags = @category.tags
  	@fotos = @category.products & ( @tag.blank? ? @category.products : @tag.products)

  end

end
