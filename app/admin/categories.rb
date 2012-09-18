ActiveAdmin.register Category do
	form do |f|
		f.inputs do
			f.input :name
			f.input :description
			f.input :sort, :as => :select, :collection => (0..Category.all.size).to_a
			f.input :tags, :as => :check_boxes
		end
		f.buttons
	end
	index do
		column :name
		column :description
	default_actions
	end
end
