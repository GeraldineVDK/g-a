class DeviMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.devi_mailer.nouveau_devi.subject
  #
  def nouveau_devi
    @devi = params[:devi] # Instance variable => available in view
    mail(to: devi.value("email"), subject: 'Demande de devis')
  end
end
