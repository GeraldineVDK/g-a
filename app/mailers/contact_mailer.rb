class ContactMailer < ApplicationMailer
  default from: "ge.et.lau@gmail.com"

  def contact_email
    @contact = params[:contact]
    receiver = params[:contact][:email]
    # @url  = 'http://example.com/login'
    mail(to: receiver, bcc: 'laurent.vanesse@gmail.com', subject: 'Welcome to My Awesome Site')
  end

end
