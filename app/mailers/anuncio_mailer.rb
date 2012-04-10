class AnuncioMailer < ActionMailer::Base
  default :from => "caminopaula@gmail.com"

  def enviar_anuncio(anuncio)
    @anuncio = anuncio
    mail :to => "caminopaula@gmail.com", :subject => "Novo anuncio para a feira #{@anuncio.titulo}"
  rescue
  end
end
