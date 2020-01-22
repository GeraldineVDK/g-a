class ContactMailer < ApplicationMailer
  default from: 'ge.et.lau@gmail.com'

  def contact_email
    @contact = params[:contact]
    @url  = 'http://example.com/login'
    mail(to: @contact.email, bcc: 'laurent.vanesse@gmail.com', subject: 'Welcome to My Awesome Site')
  end

end
