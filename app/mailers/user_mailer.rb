class UserMailer < ActionMailer::Base
  default :from => "#{ENV['EMAIL_LOGIN']}@#{ENV['EMAIL_DOMAIN']}"
  def contact_mail(usuario)
  	@usuario = usuario
  	mail(:to=>"#{ENV['EMAIL_RECEIVER']}", :subject=>"Mensagem enviada pelo(a) @usuario.name", :reply_to => @usuario.email)
  end
end