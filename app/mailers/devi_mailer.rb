class DeviMailer < ApplicationMailer
  default from: 'demande-devi@g-acleaningpro.com',
          bcc: 'ge.et.lau@gmail.com'

  def devi_email
    @devi = params[:devi]
  #   # @url  = 'http://localhost:3000/devis'
    mail(to: @devi.email, subject: 'Demande de devis envoyée')
  end
end
