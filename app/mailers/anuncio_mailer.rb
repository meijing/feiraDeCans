class AnuncioMailer < ActionMailer::Base
  default :from => "caminopaula@gmail.com"

  def enviar_anuncio()
    mail(:to => "caminopaula@gmail.com", :subject => "Welcome to My Awesome Site")
  end
end
