ActiveAdmin.register Subcategory do
	index do
		column :name
		column :category
		column :description
	default_actions
	end
end
