class ContactoMailer < ActionMailer::Base
  default :from => "caminopaula@gmail.com"


  def enviar_contacto(contacto)
    @contacto = contacto
    mail(:to => "caminopaula@gmail.com", :subject => "
      ")
  end
end
