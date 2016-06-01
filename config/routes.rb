<<<<<<< HEAD
Ciadascapas::Application.routes.draw do
  get "questions/index"
	devise_for :users
	get "/admin", to: redirect("/users/sign_in")
	root to: "pages#index"
	get "/produto/:id" => "photos#show"
	get "/produtos/:category/(:subcategory)" => "photos#index"
	
	resources :questions, path: "duvidas"
	resources :contacts, path: "contato", path_names: {new: "novo"}
	resources :photos, path: :produtos
	resources :categories do
		resources :subcategories
	end
	get "/:action" => "pages"
=======
CiaDasCapas::Application.routes.draw do
	get "/webmail" => redirect("http://www.google.com/a/capasparasofa.com.br")
	get "/quem-somos" => "pages#index"
	get "/contato" => "contatos#new"
	get "/envio" => "contatos#create"
	get "/:category" => "produtos#show"
	root :to => "pages#index"
>>>>>>> master
end