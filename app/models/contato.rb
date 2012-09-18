# encoding: utf-8
class Contato < ActiveRecord::Base
	validates :name, :presence => 		{:message => "Digite seu nome"}
	 validates :email, :presence => 		{:message => "Digite seu email"}
	 validates :city, :presence => 		{:message => "Informe sua cidade"}
	 validates :state, :presence => 		{:message => "Informe seu estado"}
	 validates :message, :presence => 	{:message => "Deixe-nos uma mensagem"}

	with_options :if => :incluiu_medidas? do |medida|
		medida.validates :altura_do_sofa, 		:presence => {:message => "Informe a altura do sofá"}
		medida.validates :profundidade_do_sofa, :presence => {:message => "Informe a profundidade do sofá"}
		medida.validates :largura_do_braco, 	:presence => {:message => "Informe a largura do braço"}
		medida.validates :largura_do_assento, 	:presence => {:message => "Informe a largura do assento"}
	end

	attr_accessible :name, :city, :state, :cep, :message, :telephone, :email, :incluir_medidas, :profundidade_do_sofa, :largura_do_braco, :largura_do_assento, :altura_do_sofa

	def incluiu_medidas?
		self.incluir_medidas
	end
end