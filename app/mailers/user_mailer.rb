class UserMailer < ActionMailer::Base
  default :from => "contato@capasparasofa.com.br"
  def contact_mail(usuario)
  	@usuario = usuario
  	mail(:to=>"contato@capasparasofa.com.br", :subject=>"Mensagem enviada pelo usuario", :reply_to => @usuario.email)
  end
end