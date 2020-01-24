class DeviMailer < ApplicationMailer
  default from: "info@gacleaningproservices.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.devi_mailer.nouveau_devi.subject
  #
  def devi_email
    @devi = params[:devi] # Instance variable => available in view
     receiver = params[:devi][:email]
    mail(to: receiver, bcc: 'laurent.vanesse@gmail.com', subject: 'Demande de devis')
  end
end
