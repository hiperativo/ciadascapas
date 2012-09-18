ActiveAdmin.register Product do
	index do |product|
		column "Tags" do |product|
			mytags = []
			for tag in product.tags do
				mytags += [tag.name]
			end
			mytags.join ", "
		end

		column "Categorias" do |category|
			mycategories = []
			for category in product.categories do
				mycategories += [category.name]
			end
			mycategories.join ", "
		end

		column "Sub-categoria" do |category|
			product.subcategory
		end

		column "Foto" do |product|
			link_to image_tag(product.photo_url(:thumb)), edit_admin_product_path(product.id)
		end
		column :name
		default_actions
	end

	form :html =>{:multipart => true} do |f|
		f.inputs do
			f.input :label
			f.input :subcategory
			f.input :categories, :as => :check_boxes
			f.input :tags, :as => :check_boxes
			f.input :photo, :as => :file
			f.input :photo_cache, :as => :hidden
	end
		f.buttons
	end
end
