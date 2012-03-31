class AnuncioMailer < ActionMailer::Base
  default :from => "caminopaula@gmail.com"

  def enviar_anuncio()
    p('.------------------------------------------')
    mail :to => "caminopaula@gmail.com", :subject => "Welcome to My Awesome Site"
  rescue
  end

  def ask_mail(result)
    @result = result

    mail :to => result.team2.players.collect(&:email),
      :subject => "Game result offer for game #{@result.game.description} received"
  rescue
    # logger.error "Error sending result #{action} email for #{@email_destination_team.players.collect(&:email)}"
  end
end
