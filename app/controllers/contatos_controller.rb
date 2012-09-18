class ContatosController < ApplicationController
	def new
		@incluiu_medidas = false
 		@contato = Contato.new
	end

	def create

		params[:contato][:incluir_medidas] = params[:contato][:incluir_medidas].size > 1
		@contato = Contato.new params[:contato]
		if @contato.save
			UserMailer.contact_mail(@contato).deliver
			flash[:notice] = "Seu contato foi enviado com sucesso. Em breve lhe retornaremos!"
			redirect_to "/quem-somos"
		else
			flash.now[:error] = "Houveram alguns errors. Dá uma olhadinha embaixo."
			render :action => "new"
		end
	end
end