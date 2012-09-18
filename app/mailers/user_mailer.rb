class UserMailer < ActionMailer::Base
  default :from => "#{ENV['EMAIL_LOGIN']}@#{ENV['EMAIL_DOMAIN']}"
  def contact_mail(usuario)
  	@usuario = usuario
  	mail(:to=>"#{EMAIL_RECEIVER}", :subject=>"Mensagem enviada pelo usuario", :reply_to => @usuario.email)
  end
end