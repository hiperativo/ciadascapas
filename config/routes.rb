CiaDasCapas::Application.routes.draw do
	get "/webmail" => redirect("http://www.google.com/a/capasparasofa.com.br")
	get "/quem-somos" => "pages#index"
	get "/contato" => "contatos#new"
	get "/envio" => "contatos#create"
	get "/:category" => "produtos#show"
	root :to => "pages#index"
end