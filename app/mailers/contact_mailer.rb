class ContactMailer < ApplicationMailer
  default from: 'demande-contact@g-acleaningpro.com',
          bcc: 'ge.et.lau@gmail.com'

  def contact_email
    @contact = params[:contact]
    # @url  = 'http://localhost:3000/devis'
    mail(to: @contact.email, subject: 'Demande de contact envoyée')
  end
end
