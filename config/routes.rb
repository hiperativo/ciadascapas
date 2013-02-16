CiaDasCapas::Application.routes.draw do
  ActiveAdmin.routes(self)

	ActiveAdmin.routes(self)
	devise_for :admin_users, ActiveAdmin::Devise.config

	get "/webmail" => redirect("http://www.google.com/a/capasparasofa.com.br")
	match "/quem-somos" => "pages#index"
	match "/contato" => "contatos#new"
	match "/envio" => "contatos#create"
	match "/:category" => "produtos#show"

	root :to => "pages#index"

end