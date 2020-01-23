class ContactMailer < ApplicationMailer
  default from: 'ga-no-reply@gmail.com'

  def contact_email
    @contact = params[:contact]
    receiver = params[:contact][:email]
    # @url  = 'http://example.com/login'
    mail(to: receiver, bcc: 'laurent.vanesse@gmail.com', subject: 'Welcome to My Awesome Site')
  end

end
