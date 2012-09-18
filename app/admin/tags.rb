# encoding: UTF-8
ActiveAdmin.register Tag do
	index do
		column :name
		column :purpose
		column :description
		default_actions
	end
	form do |f|
		f.inputs do
			f.input :name
			f.input :purpose, :collection => [
												"Tipos de Entregas",
												"Opções",
												"Tipos de Pelos",
												"Tipos de Trilhos",
												"Tecidos",
												"Acessórios"
											]
			f.input :description
		end
		f.buttons
	end
end
